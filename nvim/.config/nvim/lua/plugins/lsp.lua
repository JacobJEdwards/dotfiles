return {
    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            { 'hrsh7th/nvim-cmp' },
            { 'onsails/lspkind.nvim' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        },
        config = function()
            local lsp = require("lsp-zero")
            lsp.preset("recommended")

            lsp.ensure_installed({
                'eslint',
            })

            local lspkind = require('lspkind')


            local cmp = require('cmp')

            local cmp_select = { behavior = cmp.SelectBehavior.Select }
            local cmp_mappings = lsp.defaults.cmp_mappings({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            })

            -- disable completion with tab
            -- this helps with copilot setup
            cmp_mappings['<Tab>'] = nil
            cmp_mappings['<S-Tab>'] = nil

            lsp.setup_nvim_cmp({
                mapping = cmp_mappings,
                formatting = {
                    format = lspkind.cmp_format({})
                },
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end
                },

                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'buffer' },
                    { name = 'path' },
                }
            })

            lsp.set_preferences({
                suggest_lsp_servers = true,
                sign_icons = {
                    error = 'E',
                    warn = 'W',
                    hint = 'H',
                    info = 'I'
                }
            })

            lsp.on_attach(function(client, bufnr)
                lsp.default_keymaps({ buffer = bufnr })
                -- lsp.buffer_autoformat()

                local opts = { buffer = bufnr, remap = false }

                --[[ if client.name == "eslint" then
                    vim.cmd.LspStop('eslint')
                    return ]]
                --end

                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
                vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
                vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
                vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
                vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
                vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
                vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
            end)

            lsp.setup()

            vim.diagnostic.config({
                virtual_text = true,
            })
        end,
    },

    {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            local nls = require("null-ls")

            nls.setup({
                on_attach = function(client, bufnr)
                    vim.api.nvim_create_autocmd("BufWritePost", {
                        group = vim.api.nvim_create_augroup("BufWritePost_null-ls", {}),
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = bufnr, group = "BufWritePost_null_ls", async = true })
                        end,
                        desc = "Format",
                    })
                end,

                sources = {
                    nls.builtins.code_actions.eslint_d,
                    nls.builtins.code_actions.proselint,
                    nls.builtins.code_actions.shellcheck,

                    nls.builtins.completion.luasnip,
                    nls.builtins.completion.spell,

                    nls.builtins.diagnostics.checkmake,
                    nls.builtins.diagnostics.chktex,
                    nls.builtins.diagnostics.codespell,
                    nls.builtins.diagnostics.dotenv_linter,
                    nls.builtins.diagnostics.eslint_d,
                    nls.builtins.diagnostics.luacheck,
                    nls.builtins.diagnostics.markdownlint,
                    nls.builtins.diagnostics.proselint,
                    nls.builtins.diagnostics.ruff,

                    nls.builtins.formatting.black,
                    nls.builtins.formatting.google_java_format,
                    nls.builtins.formatting.isort,
                    nls.builtins.formatting.jq,
                    nls.builtins.formatting.latexindent,
                    nls.builtins.formatting.prettierd,
                }
            })
        end,
    },
    {
        "lvimuser/lsp-inlayhints.nvim",
        event = "LspAttach",
        opts = {},
        config = function(_, opts)
            require("lsp-inlayhints").setup(opts)
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("LspAttach_inlayhints", {}),
                callback = function(args)
                    if not (args.data and args.data.client_id) then
                        return
                    end
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    require("lsp-inlayhints").on_attach(client, args.buf)
                end,
            })
        end,
    },
}
