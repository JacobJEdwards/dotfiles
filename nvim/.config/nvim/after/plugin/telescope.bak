local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>fo', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.api.nvim_set_keymap('n', '<leader>fb', ':Telescope file_browser<CR>', { noremap = true })

require('telescope').load_extension('fzf')
require('telescope').load_extension('luasnip')
require('telescope').load_extension('file_browser')
