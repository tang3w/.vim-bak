" Vim configuration
" Author by Tang Tianyong

" !!! Please move/link this file to your home directory.

" [[[ Variables
let s:ctags_path = '/usr/local/bin/ctags'
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
set nohls
" ]]]

" [[[ Wrap and break
set nowrap
set linebreak
set whichwrap=b,s,<,>,[,]
" ]]]

" File type
filetype on

" [[[ Line number and background
set number
hi lineNr ctermfg=7 ctermbg=8
" ]]]

" [[[ Auto comment at next line
autocmd Filetype vim setlocal comments-=:\" comments+=f:\"
autocmd Filetype lua setlocal comments-=:-- comments+=f:--
autocmd Filetype c,cpp setlocal comments-=:// comments+=f://
" ]]]

" [[[ Neobundle
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplcache'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-scripts/taglist.vim'

NeoBundle 'kien/ctrlp.vim'

filetype plugin indent on
" ]]]

" [[[ Taglist
let Tlist_Ctags_Cmd = s:ctags_path
" ]]]

" [[[ Neocomplcache
" Launches neocomplcache automatically
let g:neocomplcache_enable_at_startup = 1
" Use smartcase
let g:neocomplcache_enable_smart_case = 1
" ]]]
