return {
    {
        'joshdick/onedark.vim',
        name = "onedark",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            vim.cmd("colorscheme onedark")
        end
    },

    {
	    'nvim-telescope/telescope.nvim',
	    dependencies = {
		    { 'nvim-lua/plenary.nvim' },
		    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
            { 'benfowler/telescope-luasnip.nvim' },
            { 'nvim-telescope/telescope-file-browser.nvim' },
        },
        cmd = { 'Telescope', 'Tel'},
        keys = { '<leader>f' },
        -- config = true,	
    },

    {
	    'nvim-tree/nvim-tree.lua',
	    dependencies = { "nvim-tree/nvim-web-devicons", lazy = true, },
    },

    { 'akinsho/toggleterm.nvim', version = '*', config = true, },

    {
	    'nvim-lualine/lualine.nvim',
	    dependencies = {
            'kyazdani42/nvim-web-devicons', lazy = true, name = 'devicons-2'
        },
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'onedark',
                    section_separators = '',
                    component_separators = '',
                },
            }
        end,
    },

    { 'romgrk/barbar.nvim',
        dependencies = {
            { 'nvim-tree/nvim-web-devicons', lazy = true, },
        },
        config = function()
            vim.g.bufferline = {
                animation = true,
                auto_hide = true,
                closable = true,
                clickable = true,
                icons = true,
                icon_separator_active = '▎',
                icon_separator_inactive = '▎',
                icon_close_tab = '',
                icon_close_tab_modified = '●',
                icon_pinned = '車',
                maximum_padding = 4,
                maximum_length = 30,
                semantic_letters = true,
                no_name_title = nil,
            }
        end,
    },

    { 'folke/which-key.nvim', config = true },

    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
    },

    {
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        event = "BufReadPre",
        config = true,
    },

    { 'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    },

    {
        'gelguy/wilder.nvim',
        opts = {
            modes = { ':', '/', '?' }
        },
    },

    { 'github/copilot.vim' },

    { 'tpope/vim-fugitive' },
    { 'tpope/vim-commentary' },

    { 'lervag/vimtex' },

    {
        'iamcco/markdown-preview.nvim',
        build = 'cd app && npm install',
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown", "md" },
    },

    {
        'kylechui/nvim-surround',
        version = '*',
        config = true,
    },

    { 'windwp/nvim-autopairs' }
}
