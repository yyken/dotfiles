" System
set nocompatible	   " not compatible with the old-fashion vi mode
filetype off           " necessary to make ftdetect work on Linux

" vundle settings

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"--------------
" Color Scheme
"--------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
"Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'sessionman.vim'
Bundle 'YankRing.vim'
Bundle 'jeetsukumaran/vim-buffergator'
"Bundle 'bufexplorer.zip'
"Bundle 'fholgado/minibufexpl.vim'

"-----------------
" Fast navigation
"-----------------
"Bundle 'tsaleh/vim-matchit'
"Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/snipmate-snippets'

" ==== python plugins ====
Bundle 'pyflakes.vim'


" ==== HTML plugins ====
Bundle "jsbeautify"
Bundle "lepture/vim-css"
Bundle "lepture/vim-jinja"
Bundle "tpope/vim-ragtag"
Bundle "wavded/vim-stylus"
"Bundle "lepture/vim-javascript"


" General Settings
syntax on
filetype on            " Enable filetype detection
filetype indent on     " Enable filetype-specific indenting
filetype plugin on     " Enable filetype-specific plugins

set bs=2		       " allow backspacing over everything in insert mode
set history=50		   " keep 50 lines of command line history
set ruler	           " show the cursor position all the time
set autoread           " auto read when file is changed from outside
set autochdir
set nu
set mouse=a
set showcmd
set hidden              " enable switch buffer when unsave file
set whichwrap=b,s,h,l,<,>,[,]
set clipboard=unnamed
" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

syntax enable
set background=dark
set cursorline
colorscheme desert

if has("gui_running")	" GUI color and font settings
    set guifont=Osaka-Mono:h20
    set t_Co=256          " 256 color mode
    highlight CursorLine      guibg=#1C1C1C    ctermbg=234   gui=none   cterm=none
else
    " terminal color settings
    "colors vgod
    highlight CursorLine     ctermbg=234   cterm=none
endif

" Keybinding

map :w  :up
map :q  :confirm q

" set leader to ,
let mapleader=","
let g:mapleader=","

" ,/ turn off search highlighting
nmap <leader>/ :nohl<CR>

nmap <silent> <leader>n :NERDTreeToggle<CR>
" nnoremap <silent> <leader>ff :call g:Jsbeautify()<CR>

"for multiple indentations
vnoremap < <gv
vnoremap > >gv

nmap <C-tab> :bn<CR>
imap <C-tab> <ESC>:bn<CR>i

let g:ragtag_global_maps = 1 

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" folding settings {
    
    set foldenable
    set foldmethod=syntax
    set foldcolumn=0
    setlocal foldlevel=1

    nnoremap <space> za
"}


" search settings {
    set hlsearch		" search highlighting
    set incsearch		" incremental search
    set nobackup		" no *~ backup files
    set ignorecase		" ignore case when searching
    set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise

"}

" TAB setting {
    set autoindent		" auto indentation
    set copyindent		" copy the previous indentation on autoindenting
    set smarttab		" insert tabs on the start of a line according to context

    set tabstop=4
    set softtabstop=4 
    set shiftwidth=4 
    set expandtab        "replace <TAB> with spaces

    au FileType Makefile set noexpandtab
"}      	

" For `powerline` {
set laststatus=2

"}

" Plugins Settings



"--------------------------------------------------------------------------- 
" ENCODING SETTINGS {
"--------------------------------------------------------------------------- 
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

fun! ViewUTF8()
	set encoding=utf-8                                  
	set termencoding=big5
endfun

fun! UTF8()
	set encoding=utf-8                                  
	set termencoding=big5
	set fileencoding=utf-8
	set fileencodings=ucs-bom,big5,utf-8,latin1
endfun

fun! Big5()
	set encoding=big5
	set fileencoding=big5
endfun

"}



