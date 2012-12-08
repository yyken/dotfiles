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
Bundle 'Shougo/neocomplcache'
Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
Bundle 'honza/snipmate-snippets'
Bundle "tpope/vim-ragtag"
"Bundle 'mattn/zencoding-vim'
" snipmate dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
"Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'
Bundle 'sessionman.vim'
Bundle 'YankRing.vim'
Bundle 'jeetsukumaran/vim-buffergator'
"Bundle 'bufexplorer.zip'
"Bundle 'fholgado/minibufexpl.vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
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
"Bundle 'tpope/vim-rails'
Bundle 'beyondwords/vim-jinja2'
"Bundle 'digitaltoad/vim-jade'

" web front end
Bundle 'othree/html5.vim'
"Bundle 'tpope/vim-haml'
Bundle 'nono/jquery.vim'
Bundle 'pangloss/vim-javascript'
" Bundle 'kchmck/vim-coffee-script'
"Bundle 'groenewege/vim-less'
Bundle "jsbeautify"
Bundle "lepture/vim-css"
Bundle "wavded/vim-stylus"

" markup language
Bundle 'tpope/vim-markdown'

" ==== python plugins ====
Bundle 'pyflakes.vim'

" Ruby
"Bundle 'tpope/vim-endwise'

" Scheme
"Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'wlangstroth/vim-racket'

filetype on            " Enable filetype detection
