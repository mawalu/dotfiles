syntax on
filetype plugin indent on

set nocompatible
set history=500
set ruler
set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set nowrap

" encodig
set encoding=utf-8
set fileencoding=utf-8

" color scheme
"set background=dark
let g:hybrid_use_Xresources = 1
colorscheme hybrid

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" save as root
cmap w!! w !sudo tee > /dev/null %

" plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bling/vim-airline'

call vundle#end()

" airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
