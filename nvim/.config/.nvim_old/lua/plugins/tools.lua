return {
    {
        "toppair/peek.nvim",
        build = "deno task --quiet build:fast",
        keys = {
            {
                "<leader>op",
                function()
                    local peek = require("peek")
                    if peek.is_open() then
                        peek.close()
                    else
                        peek.open()
                    end
                end,
                desc = "Peek (Markdown Preview)",
            },
        },
    },

    {
        "jackMort/ChatGPT.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-telescope/telescope.nvim",
        },
        cmd = { "ChatGPT", "ChatGPTActAs" },
        opts = {},
    },

    {
        'folke/which-key.nvim',
        config = true,
    },

    {
        'gelguy/wilder.nvim',
        opts = {
            modes = { ':', '/', '?' }
        },
    },
}
