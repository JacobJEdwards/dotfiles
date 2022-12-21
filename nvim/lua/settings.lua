local opt = vim.opt
local g = vim.g

opt.smartcase = true
opt.hlsearch = true
opt.showmatch = true
opt.autoread = true

opt.cursorline = true
opt.visualbell = true
opt.title = true
opt.ruler = true
opt.number = true
opt.relativenumber = true

opt.wildmode = {'longest', 'list', 'full'}
opt.wildmenu = true

opt.spell = true
opt.autowrite = true
opt.confirm = true
opt.smartindent = true

opt.scrolloff = 5

opt.autoindent = true
opt.clipboard = "unnamedplus"
opt.tabstop = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

opt.mouse = "a"

opt.ttyfast = true
opt.splitright = true
opt.splitbelow = true

opt.completeopt = "noinsert,menuone,noselect"
opt.inccommand = "split"

g.indent_guides_enable_on_startup = 1
