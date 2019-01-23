set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'derekwyatt/vim-scala'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'itchyny/lightline.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/seoul256.vim'
Bundle 'jlanzarotta/bufexplorer'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"## General
set eol
set mouse=a
"set number  ""# Show line numbers
set relativenumber
set linebreak ""# Break lines at word (requires Wrap lines)
set showbreak=~~ ""# Wrap-broken line prefix
set textwidth=100 ""# Line wrap (number of cols)
set showmatch ""# Highlight matching brace
set spell ""# Enable spell-checking
set visualbell  ""# Use visual bell (no beeping)
 
set hlsearch  ""# Highlight all search results
set smartcase ""# Enable smart-case search
set incsearch ""# Searches for strings incrementally
 
set autoindent  ""# Auto-indent new lines
set expandtab ""# Use spaces instead of tabs
set shiftwidth=2  ""# Number of auto-indent spaces
set softtabstop=2 ""# Number of spaces per Tab
set ts=2 et
set smartindent ""# Enable smart-indent
set smarttab  ""# Enable smart-tabs
 
"## Advanced
set ruler ""# Show row and column ruler information
 
set undolevels=1000 ""# Number of undo levels
set backspace=indent,eol,start  ""# Backspace behaviour
syntax enable

let g:seoul256_background = 234
colo seoul256

let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key='<C-n>'
let g:multi_cursor_quit_key='<Esc>'

let mapleader = "."
nmap <leader>io :NERDTreeToggle<CR>

nnoremap <leader>, :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

