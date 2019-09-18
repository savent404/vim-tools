" show tab
set list
set listchars=tab:>-,trail:-
 
" show eol white space
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-signify'
Plug 'Yggdroot/indentLine'
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/taglist.vim'
Plug 'tpope/vim-fugitive'
Plug 'rhysd/vim-clang-format'
Plug 'vim-scripts/autoload_cscope.vim'
Plug 'xavierd/clang_complete'
call plug#end()
