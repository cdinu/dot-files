set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Project / Navigation
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'


" General
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'gorkunov/smartpairs.vim'


" Typing
Plugin 'Raimondi/delimitMate'

" JavaScript
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'

" Thenes
Plugin 'tomasr/molokai'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

call vundle#end()

let mapleader=","

filetype off
filetype plugin indent on
syntax on

set autoread
set background=dark
set bs=2
set clipboard=unnamedplus
set expandtab
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set matchtime=2
set mouse=nvc
set nobackup
set noerrorbells
set noswapfile
set novisualbell
set nowritebackup
set number
set ruler
set scrolloff=7
set showcmd
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=2
set splitbelow
set splitright
set t_Co=256
set tabstop=2
set timeoutlen=250
set ttyfast
map 0 ^

let g:airline_theme='papercolor'
let g:airline_powerline_fonts=1

colorscheme Tomorrow-Night-Eighties


vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

nmap <silent> <C-D> :NERDTreeToggle<CR>

nnoremap <D-j> :m .+1<CR>==
nnoremap <D-k> :m .-2<CR>==
inoremap <D-j> <Esc>:m .+1<CR>==gi
inoremap <D-k> <Esc>:m .-2<CR>==gi
vnoremap <D-j> :m '>+1<CR>gv=gv
vnoremap <D-k> :m '<-2<CR>gv=gv

cab W w
cab Q q
cab Wq wq
cab wQ wq
cab WQ wq
cab tabe tab drop
cab Tabe tab drop
cab E e

