source ~/.vim/bundles.vim

" Backups and swapfile
set backup
set backupdir=$HOME/.vim/backup/
silent execute '!mkdir -p $HOME/.vim/backup'

set noswapfile

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" General Settings
syntax enable
syntax on
filetype indent plugin on     " Enable filetype-specific indenting & plugins

set bs=2		       " allow backspacing over everything in insert mode
set history=50		   " keep 50 lines of command line history
set autoread           " auto read when file is changed from outside
set autochdir
set mouse=a
set hidden              " enable switch buffer when unsave file
set clipboard=unnamed

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" display setting
set ruler	           " show the cursor position all the time
set nu
set showcmd
set showmatch
set laststatus=2
set matchtime=2
set matchpairs+=<:>
set whichwrap=b,s,h,l,<,>,[,]

set background=dark
colorscheme molokai 
set cursorline 

if has("gui_running")	" GUI color and font settings
    set guifont=Osaka-Mono:h20
    set t_Co=256          " 256 color mode
    highlight CursorLine      guibg=#1C1C1C    ctermbg=234   gui=none   cterm=none
else
    " terminal color settings
    "colors vgod
    highlight CursorLine     ctermbg=234   cterm=none
endif



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


" Keybinding

" STOP using the arrow keys, Dude!
"map <up>       <nop>
"map <down>     <nop>
"map <left>     <nop>
"map <right>    <nop>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

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

"=============================== 
" Plugins Settings
"===============================

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support

" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" Nerd Tree 
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"
let g:ragtag_global_maps = 1 

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" SuperTab
"let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

"---------------------------
" ENCODING SETTINGS {
"---------------------------

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



