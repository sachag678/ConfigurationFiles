call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/indentpython.vim'
"Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
call plug#end()

" Basic Config
set nu relativenumber

"Colors
colorscheme ron 

" Python specific
let python_highlight_all=1
set encoding=utf-8
syntax on

" lightline Config
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" PEP 8 Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \     softtabstop=4
    \     shiftwidth=4
    \     textwidth=120
    \     expandtab
    \     autoindent
    \     fileformat=unix
