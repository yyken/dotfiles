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

filetype on            " Enable filetype detection
