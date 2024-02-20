local opt = vim.opt
local g = vim.g

opt.termguicolors = true

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

opt.wildmode = { 'longest', 'list', 'full' }
opt.wildmenu = true

opt.spell = true
opt.autowrite = true
opt.confirm = true
opt.smartindent = true

opt.scrolloff = 5

opt.autoindent = true
opt.clipboard = "unnamedplus"
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.swapfile = false

opt.autochdir = true

opt.mouse = "a"

opt.ttyfast = true
opt.splitright = true
opt.splitbelow = true

opt.undofile = true

opt.completeopt = "noinsert,menuone,noselect"
opt.inccommand = "split"

g.indent_guides_enable_on_startup = 1
g.python3_host_prog = "/Users/jacobedwards/.pyenv/versions/py3nvim/bin/python"
