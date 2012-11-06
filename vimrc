" General Settings

set nocompatible	   " not compatible with the old-fashion vi mode
set bs=2		       " allow backspacing over everything in insert mode
set history=50		   " keep 50 lines of command line history
set ruler	           " show the cursor position all the time
set autoread           " auto read when file is changed from outside
filetype off           " necessary to make ftdetect work on Linux

syntax on
filetype on            " Enable filetype detection
filetype indent on     " Enable filetype-specific indenting
filetype plugin on     " Enable filetype-specific plugins


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'Syntastic' 
"uber awesome syntax and errors highlighter
Bundle 'altercation/vim-colors-solarized' 
" T-H-E colorscheme

"Bundle 'https://github.com/tpope/vim-fugitive' 
"So awesome, it should be illegal

Bundle 'pyflakes.vim'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'The-NERD-tree'
Bundle 'snipMate'

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc


set hlsearch		" search highlighting

set nu
set t_Co=256

if has("gui_running")	" GUI color and font settings
    set guifont=Osaka-Mono:h20
    set background=dark 
    set t_Co=256          " 256 color mode
    set cursorline        " highlight current line
    "colors solarized
    highlight CursorLine          guibg=#003853 ctermbg=24  gui=none cterm=none
else
    " terminal color settings
    "colors vgod
endif

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

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



