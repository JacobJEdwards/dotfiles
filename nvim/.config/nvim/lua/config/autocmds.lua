local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup('bufcheck', { clear = true })

-- reload config on change
autocmd('BufWritePost', {
    group = 'bufcheck',
    pattern = vim.env.MYVIMRC,
    command = 'silent source %'
})

-- highlight yanks
autocmd('TextYankPost', {
    group = 'bufcheck',
    pattern = '*',
    callback = function()
        vim.highlight.on_yank { timeout = 500 }
    end
})

-- start terminal in insert mode
autocmd('TermOpen', {
    group   = 'bufcheck',
    pattern = '*',
    command = 'startinsert | set winfixheight'
})

-- start git messages in insert mode
autocmd('FileType', {
    group   = 'bufcheck',
    pattern = { 'gitcommit', 'gitrebase', },
    command = 'startinsert | 1'
})

-- write all buffers on focus lost
autocmd('FocusLost', {
    group    = 'bufcheck',
    pattern  = '*',
    callback = function()
        vim.cmd('silent! wa')
        require('notify')("Saved all buffers")
    end,
})

-- map ejs to html
autocmd('BufNewFile,BufRead', {
    group    = 'bufcheck',
    pattern  = '*.ejs',
    callback = function()
        vim.cmd('setfiletype html')
    end
})
