" System
set nocompatible	   " not compatible with the old-fashion vi mode
filetype off           " necessary to make ftdetect work on Linux

" vundle settings

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'


" ==== General plugins ====

"uber awesome syntax and errors highlighter
Bundle 'Syntastic'                          
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'snipMate'
Bundle 'vim-indent-object'
Bundle 'SuperTab'
Bundle 'sessionman.vim'
Bundle 'YankRing.vim'

" T-H-E colorscheme
Bundle 'altercation/vim-colors-solarized'
Bundle 'c9s/colorselector.vim'          
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'jeetsukumaran/vim-buffergator'


" ==== python plugins ====
Bundle 'pyflakes.vim'


" ==== HTML plugins ====
Bundle "lepture/vim-css"
Bundle "lepture/vim-jinja"
Bundle "mattn/zencoding-vim"
Bundle "wavded/vim-stylus"
Bundle "lepture/vim-javascript"


" General Settings
set bs=2		       " allow backspacing over everything in insert mode
set history=50		   " keep 50 lines of command line history
set ruler	           " show the cursor position all the time
set autoread           " auto read when file is changed from outside
set autochdir
set nu
set mouse=a

syntax on
filetype on            " Enable filetype detection
filetype indent on     " Enable filetype-specific indenting
filetype plugin on     " Enable filetype-specific plugins


" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

if has("gui_running")	" GUI color and font settings
    set guifont=Osaka-Mono:h20
    set background=dark 
    set t_Co=256          " 256 color mode
    set cursorline        " highlight current line
    colors desert
    highlight CursorLine          guibg=#003853 ctermbg=24  gui=none cterm=none
else
    " terminal color settings
    "colors vgod
endif

" Keybinding
" set leader to ,
let mapleader=","
let g:mapleader=","

" ,/ turn off search highlighting
nmap <leader>/ :nohl<CR>

nmap <leader>f :NERDTree<CR>

nmap <C-tab> :bn<CR>
imap <C-tab> <ESC>:bn<CR>i

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" folding settings
set foldenable
set foldmethod=marker
nnoremap <space> za

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

    set expandtab        "replace <TAB> with spaces
    set softtabstop=4 
    set shiftwidth=4 

    au FileType Makefile set noexpandtab
"}      	

" For `powerline` {
set laststatus=2

"}

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



