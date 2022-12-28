return {
    {
        "joshdick/onedark.vim",
        name = "onedark",
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function()
            vim.cmd("colorscheme onedark")
        end
    },

    {
	    "nvim-telescope/telescope.nvim",
	    dependencies = {
		    { 'nvim-lua/plenary.nvim' },
		    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	}

    },

    {
	    'nvim-tree/nvim-tree.lua',
	    dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    { 'akinsho/toggleterm.nvim', version = '*', config = true, },

    {
	    'nvim-lualine/lualine.nvim',
	    dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true, name = 'devicons-2' }
    },

    { 'romgrk/barbar.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },

    { 'folke/which-key.nvim', config = true },

    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

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
        config = { modes = { ':', '/', '?' } },
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
        ft = { "markdown" },
    },

    {
        'kylechui/nvim-surround',
        version = '*',
        config = true,
    },

    { 'windwp/nvim-autopairs' },
}
