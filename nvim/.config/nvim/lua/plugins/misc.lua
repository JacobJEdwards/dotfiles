return {
    {
        'echasnovski/mini.animate',
        version = false,
        lazy = false,
        config = function()
            require('mini.animate').setup()
        end,
    },
    {
        "folke/zen-mode.nvim",
        cmd = "ZenMode",
        keys = {
            { "<leader>z", "<Cmd>ZenMode<CR>", desc = "Zen Mode" },
        },
    },
    {
        "cshuaimin/ssr.nvim",
        keys = {
            {
                "<leader>sr",
                function()
                    require("ssr").open()
                end,
                mode = { "n", "x" },
                desc = "Structural search and replace",
            },
        },
    },
}

