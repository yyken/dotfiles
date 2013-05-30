source ~/.vim/bundles.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

filetype indent plugin on     " Enable filetype-specific indenting & plugins

" Backups and swapfile
set noswapfile
set nobackup
set nowritebackup
"set backupdir=$HOME/.vim/backup/
"silent execute '!mkdir -p $HOME/.vim/backup'

set history=50		   " keep 50 lines of command line history
set autoread           " auto read when file is changed from outside
set autochdir

" encoding settings
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set bs=2		       " allow backspacing over everything in insert mode
set mouse=a
set hidden              " enable switch buffer when unsave file
set clipboard=unnamed

" Set 7 lines to the cursor - when moving vertically using j/k
set scrolloff=5

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*~,*.pyc,.DS_Store  " MacOSX/Linux

" display setting
set ruler	           " show the cursor position all the time
set nu
set showcmd
set laststatus=2
set matchpairs+=<:>

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap=b,s,h,l,<,>,[,]

" search settings {
    set hlsearch		" search highlighting
    set incsearch		" incremental search
    set ignorecase		" ignore case when searching
    set smartcase		" ignore case if search pattern is all lowercase,case-sensitive otherwise
    " Don't redraw while executing macros (good performance config)
    set lazyredraw
    " For regular expressions turn magic on
    set magic
    " Show matching brackets when text indicator is over them
    set showmatch
    " How many tenths of a second to blink when matching brackets
    set  matchtime=2
"}

" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on

set background=dark
colorscheme molokai 
set cursorline 
set cursorcolumn

if has("gui_running")	" GUI color and font settings
    set guioptions-=T
    set guioptions+=eset guifont=Source\ Code\ Pro\ Semibold\ for\ Powerline:h15
    set t_Co=256          " 256 color mode
    set guitablabel=%M\ %t
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

" set leader to ,
let mapleader=","
let g:mapleader=","

map :w  :up
map :q  :confirm q
cmap w!! w !sudo tee % >/dev/null


" Fast saving
"nmap <leader>w :w<CR>

" ,/ turn off search highlighting
nmap <leader>/ :nohl<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"for multiple indentations
vnoremap < <gv
vnoremap > >gv


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STOP using the arrow keys, Dude!
"map <up>       <nop>
"map <down>     <nop>
"map <left>     <nop>
"map <right>    <nop>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nmap <C-Left> :bp<CR>
nmap <C-Right> :bn<CR>
imap <C-Left> <ESC>:bp<CR>i
imap <C-Right> <ESC>:bn<CR>i
nmap <Leader>d :bp<CR>:bd#<CR>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

au BufRead * normal zR

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap  <leader>j mz:m+<cr>`z
nmap  <leader>k mz:m-2<cr>`z
vmap  <leader>j :m'>+<cr>`<my`>mzgv`yo`z
vmap  <leader>k :m'<-2<cr>`>my`<mzgv`yo`z


autocmd BufWrite *.coffee :call DeleteTrailingWS()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
"map <leader>cc :botright cope<cr>
"map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
"map <leader>cn :cn<cr>
"map <leader>cp :cp<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ackprg = 'ag --nogroup --nocolor --column'

" Nerd Tree 
nmap <silent> <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"
"let NERDChristmasTree=0
"let NERDTreeWinSize=30
"let NERDTreeChDirMode=2

" ctrlp
let g:ctrlp_map = '<c-o>'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" YouCompleteMe
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" QUICKFIX WINDOW
command! -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
    if exists("g:qfix_win") && a:forced == 0
        cclose
        unlet g:qfix_win
    else
        copen 10
        let g:qfix_win = bufnr("$")
    endif
endfunction
nnoremap <leader>q :QFix<CR>

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

command! DiffOrig vert new | set bt=nofile | r ++edit # | 0d_
	 	\ | diffthis | wincmd p | diffthis

function! s:DiffWithGITCheckedOut()
  let filetype=&ft
  diffthis
  vnew | exe "%!git diff " . expand("#:p:h") . "| patch -p 1 -Rs -o /dev/stdout"
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
  diffthis
endfunction
com! DiffGIT call s:DiffWithGITCheckedOut()
