return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-lua/popup.nvim' },
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'make',
                config = function()
                    require('telescope').load_extension('fzf')
                end,
            },
            {
                'benfowler/telescope-luasnip.nvim',
                config = function()
                    require('telescope').load_extension('luasnip')
                end,
            },
        },
        keys = {
            {
                "<leader>ff",
                function()
                    require('telescope.builtin').find_files()
                end,
                desc = "Find files",
            },
        },
    },
}

