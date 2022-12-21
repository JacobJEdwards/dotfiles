-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- File helpers
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = {
			  {'nvim-lua/plenary.nvim'},
			  {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
	  }
  }

  use {'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' }}

  -- themes and UI
  use({
	  'joshdick/onedark.vim',
	  as = 'onedark',
	  requires = {'nvim-tree/nvim-web-devicons'},
	  config = function()
		  vim.cmd('colorscheme onedark')
	  end
  })

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use { 'romgrk/barbar.nvim', wants = 'nvim-web-devicons' }

  use {
    "folke/which-key.nvim",
    config = function()
        require("which-key").setup {

        }

    end}

  -- treesitter
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })

  -- LSP and completion
  use {
	'VonHeikemen/lsp-zero.nvim',
	 requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-nvim-lua'},

		-- Snippets
		{'L3MON4D3/LuaSnip'},
		{'rafamadriz/friendly-snippets'},
	}
  }
  use {
    'gelguy/wilder.nvim',
    config = function()
    -- config goes here
    end,
  }

  use { 'github/copilot.vim' }
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-commentary' }
  use { 'lervag/vimtex' }
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  })
  use { 'windwp/nvim-autopairs' }
end)

