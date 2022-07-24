set nocompatible
filetype plugin on
syntax on

:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


call plug#begin()

Plug 'vim-airline/vim-airline' " Status bar
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

set encoding=UTF-8

call plug#end()


let g:airline_powerline_fonts = 1

" =============================================================================
" Set the vimwiki location and change the syntax to markdown
" =============================================================================
let g:vimwiki_list = [{'path': '~/wiki/','syntax': 'markdown', 'ext': '.md'}]