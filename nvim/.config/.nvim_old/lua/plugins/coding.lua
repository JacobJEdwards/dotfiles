return {
    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({})
        end,
    },
    {
        "numToStr/Comment.nvim",
        keys = {
            { "gc", desc = "Toggle linewise comment" },
            { "gb", desc = "Toggle blockwise comment" },
        },
        opts = {},
    },
    -- {
    --     "zbirenbaum/copilot.lua",
    --     event = "InsertEnter",
    --     opts = {
    --         suggestion = {
    --             keymap = {
    --                 accept = "<Tab>",
    --             },
    --         },
    --         filetypes = {
    --             yaml = true,
    --             markdown = true,
    --         },
    --     },
    --     config = function()
    --         require("copilot").setup(opts)
    --         vim.cmd([[Copilot suggestion]])
    --     end,
    -- },

    --[[ {
        'echasnovski/mini.trailspace',
        version = false,
        event =  "BufRead",
        config = function()
            require("mini.trailspace").setup()
        end,
    }, ]]
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function()
            require('nvim-autopairs').setup()
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        event = "InsertEnter",
        config = function()
            require'nvim-treesitter.configs'.setup {
                autotag = {
                    enable = true,
                }
            }
        end,
    },
    -- {
    --     "github/copilot.vim",
    --     event = "InsertEnter",
    --     build = "Copilot auth",
    -- },
}
