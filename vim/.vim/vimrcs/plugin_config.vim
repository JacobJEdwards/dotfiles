" set Dein base path
let s:dein_base = '/Users/jacobedwards/.cache/dein'

" Set Dein source path
let s:dein_src = '/Users/jacobedwards/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Plugins:
call dein#add('lervag/vimtex')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')

call dein#add('pangloss/vim-javascript')
call dein#add('Vimjas/vim-python-pep8-indent')
call dein#add('nathanaelkane/vim-indent-guides')

call dein#add('maxbrunsfeld/vim-yankstack')
call dein#add('tpope/vim-commentary')
call dein#add('itchyny/lightline.vim')
call dein#add('amix/open_file_under_cursor.vim')

call dein#add('preservim/nerdtree')
call dein#add('dense-analysis/ale')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-sensible')
call dein#add('tpope/vim-fugitive')
call dein#add('jiangmiao/auto-pairs')
call dein#add('nvim-treesitter/nvim-treesitter')
call dein#add('sheerun/vim-polyglot')
call dein#add('mhinz/vim-startify')

" Themes
call dein#add('joshdick/onedark.vim')
call dein#add('ryanoasis/vim-devicons')

" Finish Dein initialization
call dein#end()

