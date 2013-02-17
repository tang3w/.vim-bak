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
set guifont=Monaco:h16
set cursorcolumn
set cursorline
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
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

" No swap file
set noswapfile

" Fold enable
set foldenable

set wildmenu

" [[[ Line number and background
set number
hi lineNr ctermfg=7 ctermbg=8
" ]]]

" [[[ Auto comment at next line
autocmd Filetype vim setlocal comments-=:\" comments+=f:\"
autocmd Filetype lua setlocal comments-=:-- comments+=f:--
autocmd Filetype c,cpp setlocal comments-=:// comments+=f://
" ]]]

" [[[ Auto source the .vimrc
autocmd! BufWritePost .vimrc source ~/.vimrc
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
Bundle 'vim-scripts/highlight.vim'
Bundle 'kshenoy/vim-signature'
Bundle 'embear/vim-foldsearch'
Bundle 'fs111/pydoc.vim'
Bundle 'tang3w/jpythonfold.vim'
Bundle 'vim-scripts/simplefold'
Bundle 'vim-scripts/EasyGrep'
Bundle 'vim-scripts/mru.vim'
Bundle 'davidhalter/jedi-vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tang3w/cscope.vim'
Bundle 'wesleyche/SrcExpl'
Bundle 'xolox/vim-session'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'guns/xterm-color-table.vim'

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

" [[[ Cscope
let g:cscope_cmd = '/usr/local/bin/cscope'
" ]]]

" [[[
let g:SrcExpl_updateTagsCmd = s:ctags_path." --sort=foldcase -R ."
let g:SrcExpl_pluginList = [ 
    \"__Tag_List__", 
    \"_NERD_tree_",
    \"Source_Explorer"
\]
" ]]]

colorscheme desert256

" [[[ Key mapping

" Timeout length
set timeoutlen=99999

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

" For Powerline
set laststatus=2

" For Indent Guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#800000 ctermbg=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#008000 ctermbg=2

nnoremap <silent> <Leader>/ :nohlsearch<CR>

map - <C-u>
map + <C-d>
map // <Leader>c<Space>
map <Leader>a :FSHere<CR>
map <Leader>r :MRU<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>t :TlistToggle<CR>
map <Leader>s :CtrlP<CR>
map <Leader>be :BufExplorer<CR>
map <Leader>u :GundoToggle<CR>
map <Leader>g :exec ":Grep ".input("Grep: ")<CR>
map <Leader>go :GrepOptions<CR>
map <Leader>p %

imap <expr> <C-g><C-y> matchstr(getline(line('.')-1), '\%' . virtcol('.') . 'v\%(\k\+\s\=\\|.\)')
imap <expr> <C-g><C-u> matchstr(getline(line('.')-1), '\%' . virtcol('.') . 'v\%(\S\+\s\=\\|.\)')
imap <expr> <C-g><C-e> matchstr(getline(line('.')+1), '\%' . virtcol('.') . 'v\%(\k\+\s\=\\|.\)')
imap <expr> <C-g><C-d> matchstr(getline(line('.')+1), '\%' . virtcol('.') . 'v\%(\S\+\s\=\\|.\)')
imap <expr> <C-g>y matchstr(getline(line('.')-1), '\%' . virtcol('.') . 'v\%(\k\+\s\=\\|.\)')
imap <expr> <C-g>u matchstr(getline(line('.')-1), '\%' . virtcol('.') . 'v\%(\S\+\s\=\\|.\)')
imap <expr> <C-g>e matchstr(getline(line('.')+1), '\%' . virtcol('.') . 'v\%(\k\+\s\=\\|.\)')
imap <expr> <C-g>d matchstr(getline(line('.')+1), '\%' . virtcol('.') . 'v\%(\S\+\s\=\\|.\)')
" ]]]
