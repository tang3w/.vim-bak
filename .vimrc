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
let mapleader = "l"
" ]]]

" [[[ Neobundle
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/vundle/
    set runtimepath+='~/.vim/bundle/sparkup/vim/'
endif

call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Bundles
Bundle 'Shougo/neocomplcache'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'scrooloose/nerdtree'
Bundle 'tang3w/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-surround'
Bundle 'tmhedberg/matchit'
Bundle 'vim-scripts/Gundo'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/snipmate-snippets'
Bundle 'jiangmiao/auto-pairs'
Bundle 'jsedivy/vim-sparkup'
Bundle 'scrooloose/syntastic'
Bundle 'nvie/vim-flake8'
Bundle 'vim-scripts/Pydiction'
Bundle 'derekwyatt/vim-fswitch'
Bundle 'tang3w/YankRing.vim'
Bundle 'vim-scripts/highlight.vim'
Bundle 'kshenoy/vim-signature'
Bundle 'embear/vim-foldsearch'
Bundle 'fs111/pydoc.vim'
Bundle 'vim-scripts/MarkLines'
Bundle 'tang3w/python_ifold'
Bundle 'vim-scripts/simplefold'
Bundle 'vim-scripts/EasyGrep'
Bundle 'vim-scripts/mru.vim'
Bundle 'davidhalter/jedi-vim'

filetype plugin indent on
" ]]]

" [[[ Taglist
let Tlist_Ctags_Cmd = s:ctags_path
let Tlist_Exit_OnlyWindow = 1 
let Tlist_Use_Right_Window = 1
" ]]]

" [[[ CtrlP
let g:ctrlp_show_hidden = 1
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

colorscheme desert256

" [[[ Key mapping

" Timeout length
set timeoutlen=256

map <Leader>h <C-w>h 
map <Leader>j <C-w>j
map <Leader>k <C-w>k
map <Leader>l <C-w>l

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Flake8
autocmd FileType python map <buffer> <F7> :call Flake8()<CR>

nmap - <C-b>
nmap = <C-f>

nnoremap <silent> <Leader>/ :nohlsearch<CR>

map jj <Leader><Leader>j
map kk <Leader><Leader>k
map ff <Leader><Leader>f
map FF <Leader><Leader>F
map ww <Leader><Leader>w
map // <Leader>c<Space>
map <Leader>r :MRU<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>t :TlistToggle<CR>
map <Leader>s :CtrlP<CR>
map <Leader>be :BufExplorer<CR>
map <Leader>u :GundoToggle<CR>
map <Leader>g :exec ":Grep ".input("Grep: ")<CR>
map <Leader>go :GrepOptions<CR>
map <Enter> o
map ;; $
map ; ^
" ]]]
