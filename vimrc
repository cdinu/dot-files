set nocompatible
filetype plugin on
set omnifunc=syntaxcomplete#Complete

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'danro/rename.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'gorkunov/smartpairs.vim'
Plugin 'henrik/vim-ruby-runner'
Plugin 'int3/vim-extradite'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'msanders/snipmate.vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'rking/ag.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'marijnh/tern_for_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sickill/vim-monokai'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'vim-scripts/matchit.zip'
Plugin 'briangershon/html5.vim'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'

call vundle#end()

filetype plugin indent on

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

syntax enable
colorscheme monokai

set tabstop=2
set shiftwidth=2
set expandtab
set scrolloff=3
set sidescrolloff=7
set sidescroll=1
set cf " Enable error files & error jumping.
set history=256 " Number of things to remember in history.
set autowrite " Writes on make/shell commands
set ruler " Ruler on
set nu " Line numbers on
set wrap " Line wrapping on
set timeoutlen=250 " Time to wait after ESC (default causes an annoying delay)

" Highlight all search results
set incsearch
set hlsearch

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" Forcing the use of hjkl keys to navigate
" noremap <Up> <nop>
" noremap <Down> <nop>
" noremap <Left> <nop>
" noremap <Right> <nop>
" inoremap <Up> <nop>
" inoremap <Down> <nop>
" inoremap <Left> <nop>
" inoremap <Right> <nop>

set ignorecase

" Open splits at right side (and below)
set splitright
set splitbelow

" Never ever let Vim write a backup file! They did that in the 70’s.
" Use modern ways for tracking your changes (like git), for God’s sake
set nobackup
set noswapfile

" Syntastic configs
let g:syntastic_javascript_checkers = ['jscs']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_mode_map={ 'mode': 'active',
                         \ 'active_filetypes': ['ruby', 'javascript'],
                         \ 'passive_filetypes': ['html'] }

let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

" Improve 'n' command (for searches)
nmap n nzz
nmap N Nzz

" Mappings to move lines: http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

cab W w
cab Q q
cab Wq wq
cab wQ wq
cab WQ wq
cab tabe tab drop
cab Tabe tab drop
cab E e


set laststatus=2
let g:airline_powerline_fonts = 1

