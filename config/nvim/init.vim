:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

set encoding=UTF-8

call plug#end()


let g:airline_powerline_fonts = 1
