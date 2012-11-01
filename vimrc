set nocompatible
filetype off
syntax enable

if has('gui_running')
    set background=light
else
    set background=dark
endif

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

filetype plugin indent on
"colorscheme solarized

set nu
set t_Co=256
set fileencoding=utf-8
set encoding=utf-8
set expandtab
set ai
set ts=4
set sts=4
set sw=4

set laststatus=2 
" For `powerline`
