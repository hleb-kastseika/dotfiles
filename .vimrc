set relativenumber number

syntax on

set incsearch
set hlsearch
set ignorecase
set smartcase

set encoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r,cp866
set termencoding=utf8

set nocompatible

set ruler

set showcmd

set noerrorbells visualbell t_vb=

set mouse=a
set mousemodel=popup

set hidden

set guioptions-=T

set expandtab
set shiftwidth=4
set softtabstop=5
set tabstop=4

set nowrap

set wildmenu

set t_Co=256

set autoread

set confirm

set laststatus=2

set clipboard=unnamedplus

set noswapfile

set title

set scrolloff=5

set laststatus=2

set history=1000
set undolevels=1000

set noswapfile

set virtualedit=all

set noshowmode

set wrap

set linebreak

set backspace=indent,eol,start

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'itchyny/lightline.vim'          
Plug 'frazrepo/vim-rainbow'
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

let g:rainbow_active = 1
