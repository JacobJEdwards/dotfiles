require'bufferline'.setup {
    animation = true,
    auto_hide = false,
    tabpages = true,
    closable = true,
    clickable = true,

    icons = true
}


local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '≤', '<Cmd>BufferPrevious<CR>', opts)
map('n', '≥', '<Cmd>BufferNext<CR>', opts)

map('n', 'ç', '<Cmd>BufferClose<CR>', opts)
