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

set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

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

set virtualedit=all

set noshowmode

set nowrap

set linebreak

set backspace=indent,eol,start

set timeoutlen=300
set ttimeoutlen=0

noremap <Space> <Nop>
map <Space> <Leader>

inoremap kj <esc>
inoremap jk <esc>
xnoremap kj <esc>
xnoremap jk <esc>

nmap j gj
nmap k gk
xmap j gj
xmap k gk

nnoremap ; :

nnoremap H ^
nnoremap L $

map <leader>h :noh<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

map <C-n> :bnext<CR>
map <C-m> :bprev<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <leader>f :NERDTreeToggle<CR>

noremap <leader>/ :Commentary<cr>

if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'itchyny/lightline.vim'          
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
call plug#end()

let g:lightline = {
            \ 'colorscheme': 'seoul256',
            \}

let g:rainbow_active = 1

let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen=1

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |

" Fix issue with NERDTree & Lightline compatibility
autocmd VimEnter,BufWinEnter * call lightline#update()
