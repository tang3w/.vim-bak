" Vim configuration
" Author by Tang Tianyong

" !!! Please move/link this file to your home directory.

" [[[ Variables
let s:ctags_path = '/usr/local/bin/ctags'
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
" ]]]

" Be IMproved
set nocompatible

" [[[ Encoding
set encoding=utf-8
set fileencoding=utf-8
" ucs-bom means utf-8 without bom
set fileencodings=ucs-bom,utf-8,gb18030,cp936
set langmenu=zh_CN.UTF-8
" ]]]

" [[[ Tab and space
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" Display the 2-bytes character
set ambiwidth=double
" ]]]

" [[[ Indent
set cindent
set autoindent
" C/C++ indent style
set cinoptions=(sus
" ]]]

" [[[ Highlight
syntax on
colorscheme desert256
set guifont=Menlo\ Regular:h16
" ]]]

" Backspace
set backspace=indent,eol,start

" Ruler rules
set ruler

" [[[ Search rules
set is
set hls
set ignorecase
" ]]]

" [[[ Wrap and break
set nowrap
set linebreak
set whichwrap=b,s,<,>,[,]
" ]]]

" File type
filetype off

" [[[ Line number and background
set number
hi lineNr ctermfg=7 ctermbg=8
" ]]]

" [[[ Auto comment at next line
autocmd Filetype vim setlocal comments-=:\" comments+=f:\"
autocmd Filetype lua setlocal comments-=:-- comments+=f:--
autocmd Filetype c,cpp setlocal comments-=:// comments+=f://
" ]]]

" [[[ Leader
let mapleader = "\\"
" ]]]

" [[[ Neobundle
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    set runtimepath+='~/.vim/bundle/sparkup/vim/'
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'vim-scripts/bufexplorer.zip'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'vim-scripts/Gundo'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/snipmate-snippets'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'jsedivy/vim-sparkup'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'nvie/vim-flake8'
NeoBundle 'vim-scripts/Pydiction'
NeoBundle 'derekwyatt/vim-fswitch'
NeoBundle 'vim-scripts/YankRing.vim'
NeoBundle 'vim-scripts/highlight.vim'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'embear/vim-foldsearch'
NeoBundle 'fs111/pydoc.vim'

filetype plugin indent on
" ]]]

" [[[ Taglist
let Tlist_Ctags_Cmd = s:ctags_path
let Tlist_Exit_OnlyWindow = 1 
let Tlist_Use_Right_Window = 1
" ]]]

" [[[ Neocomplcache
" Launches neocomplcache automatically
let g:neocomplcache_enable_at_startup = 1
" Use smartcase
let g:neocomplcache_enable_smart_case = 1
" ]]]

" [[[ Rainbow parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16

autocmd VimEnter * RainbowParenthesesToggle

autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces
autocmd Syntax * RainbowParenthesesLoadChevrons
" ]]]
 
" [[[ Sparkup
let g:sparkupExecuteMapping = '<C-e>'
" ]]]

" [[[ Key mapping
map <leader>h <C-w>h 
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

map <leader><Left>  <C-w>h
map <leader><Down>  <C-w>j
map <leader><Up>    <C-w>k
map <leader><Right> <C-w>l

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <F2> :NERDTreeToggle<CR> 
map <F3> :TlistToggle<CR>
map <F4> :BufExplorer<CR>
map <F5> :CtrlP<CR>
map <F6> :GundoToggle<CR>

" Flake8
autocmd FileType python map <buffer> <F7> :call Flake8()<CR>

nmap - <C-b>
nmap = <C-f>

nnoremap <silent> <Leader>/ :nohlsearch<CR>
" ]]]
