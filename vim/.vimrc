" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc

set backspace=indent,eol,start

set nocompatible

let mapleader=","

source ~/.vim/vimrcs/plugin_config.vim

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" colorscheme config
colorscheme onedark
let g:onedark_termcolors = 1 
let g:lightline = {
      \ 'colorscheme': 'onedark'
      \ }

" Vim general rules
"source ~/.vim/vimrcs/rules.vim

" Vim keybinds
source ~/.vim/vimrcs/keybinds.vim

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

