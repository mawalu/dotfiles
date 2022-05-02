syntax on
filetype plugin indent on
filetype plugin on

autocmd FileType markdown set wrap
autocmd FileType markdown set linebreak

set nocompatible
set history=500
set ruler
set number

set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set nowrap

set showcmd
set autowrite
set clipboard=unnamed     " access your system clipboard
set hlsearch

"" Ctrl Left/h & Right/l cycle between buffers
noremap <silent> <C-left> :bprev<CR>
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-right> :bnext<CR>
noremap <silent> <C-l> :bnext<CR>

" disable backup and swap files
set nobackup
set noswapfile

" encodig
set encoding=utf-8
set fileencoding=utf-8

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

" save using ctrl+s
map <C-s> :w<CR>

" plugins
call plug#begin('~/.plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'LnL7/vim-nix'
Plug 'plasticboy/vim-markdown'
Plug 'jamessan/vim-gnupg'
Plug 'townk/vim-autoclose'
Plug 'ap/vim-buftabline'

call plug#end()

let g:vim_markdown_folding_disabled = 1

" GPG config

let g:GPGPreferSign=1
let g:GPGPreferArmor=1
let g:GPGDefaultRecipients=["martin@mawalabs.de"]

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
