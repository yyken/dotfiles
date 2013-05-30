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
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Bundle 'mattn/zencoding-vim'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'
Bundle 'YankRing.vim'
Bundle 'tpope/vim-fugitive'

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
Bundle 'digitaltoad/vim-jade'

" web front end
Bundle 'nono/jquery.vim'
Bundle 'pangloss/vim-javascript'
Bundle "jsbeautify"
Bundle "lepture/vim-css"
"Bundle 'tpope/vim-haml'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'groenewege/vim-less'

" markup language
Bundle 'plasticboy/vim-markdown'
Bundle 'tangledhelix/vim-octopress'

" ==== python plugins ====
Bundle 'klen/python-mode'

filetype on            " Enable filetype detection
