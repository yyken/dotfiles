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
Bundle 'flazz/vim-colorschemes'

"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache.git'
Bundle 'Shougo/neosnippet.git'
Bundle 'honza/snipmate-snippets'
Bundle 'mattn/zencoding-vim'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'
Bundle 'sessionman.vim'
Bundle 'YankRing.vim'
Bundle 'jeetsukumaran/vim-buffergator'
"Bundle 'bufexplorer.zip'
"Bundle 'fholgado/minibufexpl.vim'
"Bundle 'tpope/vim-fugitive'

"-----------------
" Fast navigation
"-----------------
Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'scrooloose/nerdcommenter'
"Bundle 'sjl/gundo.vim'
"Bundle 'Raimondi/delimitMate'
"Bundle 'kana/vim-smartinput'
"Bundle 'godlygeek/tabular'
"Bundle 'nathanaelkane/vim-indent-guides'


"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
" web backend
Bundle 'beyondwords/vim-jinja2'
"Bundle 'digitaltoad/vim-jade'

" web front end
Bundle 'othree/html5.vim'
Bundle 'nono/jquery.vim'
Bundle 'pangloss/vim-javascript'
Bundle "jsbeautify"
Bundle "lepture/vim-css"
Bundle "wavded/vim-stylus"
"Bundle 'tpope/vim-haml'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'groenewege/vim-less'

" markup language
Bundle 'tpope/vim-markdown'

" ==== python plugins ====
Bundle 'pyflakes.vim'

" Scheme
"Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'wlangstroth/vim-racket'

filetype on            " Enable filetype detection
