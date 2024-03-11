if vim.loader then
    vim.loader.enable()
    vim.schedule(function()
        vim.notify("nvim cache is enabled")
    end)
end

vim.g.mapleader = ","
vim.g.maplocalleader = ","

require("config.lazy")

require("config.settings")
require("config.keymaps")
require("config.autocmds")
