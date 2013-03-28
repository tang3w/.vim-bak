" Vim configuration
" Author by Tang Tianyong
" Please move or link this file to your home directory.

" Be improved
set nocompatible

" Variables
let s:ctags_path = '/usr/local/bin/ctags'
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gb18030,cp936
set langmenu=zh_CN.UTF-8

" Ruler rules
set ruler

" Tab and space
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Display 2-bytes character
set ambiwidth=double

" Indent
set cindent
set autoindent
set cinoptions=(sus

" Highlight
syntax on
syntax enable
set guifont=Monaco:h16
set cursorcolumn
set cursorline
au BufLeave * set nocursorline nocursorcolumn
au BufEnter * set cursorline cursorcolumn

" Backspace
set backspace=indent,eol,start

" Search rules
set is
set hlsearch
set ignorecase

" Wrap and break
set wrap
let &showbreak="↪ "
set linebreak
set whichwrap=b,s,<,>,[,]

" Break at multi-byte character
set formatoptions+=mM

" File type
filetype off

" No swap file
set noswapfile

" Fold enable
set foldenable

" Show command list
set wildmenu

" Line number and background
set number

" Auto comment at next line
autocmd Filetype vim setlocal comments-=:\" comments+=f:\"
autocmd Filetype lua setlocal comments-=:-- comments+=f:--
autocmd Filetype c,cpp setlocal comments-=:// comments+=f://

" Auto source the .vimrc
autocmd! BufWritePost .vimrc source ~/.vimrc

" Leader key
let mapleader = "l"

" Bundle
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/vundle/
    set runtimepath+='~/.vim/bundle/sparkup/vim/'
endif

call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Bundles
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'scrooloose/nerdtree'
Bundle 'tang3w/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-surround'
Bundle 'tmhedberg/matchit'
Bundle 'vim-scripts/Gundo'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'Raimondi/delimitMate'
Bundle 'jsedivy/vim-sparkup'
Bundle 'scrooloose/syntastic'
Bundle 'nvie/vim-flake8'
Bundle 'vim-scripts/Pydiction'
Bundle 'derekwyatt/vim-fswitch'
Bundle 'kshenoy/vim-signature'
Bundle 'embear/vim-foldsearch'
Bundle 'fs111/pydoc.vim'
Bundle 'tang3w/jpythonfold.vim'
Bundle 'vim-scripts/simplefold'
Bundle 'vim-scripts/EasyGrep'
Bundle 'vim-scripts/mru.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tang3w/cscope.vim'
Bundle 'xolox/vim-session'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'godlygeek/tabular'
Bundle 'Yggdroot/indentLine'
Bundle 'guns/xterm-color-table.vim'
Bundle 'vim-scripts/python_match.vim'
Bundle 'tang3w/wmgraphviz.vim'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'myusuf3/numbers.vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-entire'
Bundle 'tang3w/zencoding-vim'
Bundle 'tang3w/detectindent'
Bundle 'altercation/vim-colors-solarized'
Bundle 'wikitopian/hardmode'
Bundle 'vim-scripts/lastpos.vim'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'mattn/calendar-vim'
Bundle 'vim-scripts/camelcasemotion'
Bundle 'chrisbra/color_highlight'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-abolish'
Bundle 'paradigm/vim-multicursor'
Bundle 'vim-scripts/SyntaxMotion.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tmhedberg/indent-motion'
Bundle 'sjl/vitality.vim'
Bundle 'vim-scripts/tinymode.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'
Bundle 'bronson/vim-ruby-block-conv'
Bundle 'vim-scripts/phpfolding.vim'
Bundle 'StanAngeloff/php.vim'
Bundle 'shawncplus/phpcomplete.vim'

filetype plugin indent on

" Vitality
let g:vitality_fix_cursor = 0

" CtrlP
let g:ctrlp_show_hidden = 1

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1

" Rainbow parentheses
let g:rbpt_max = 16
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
    \ ['red',         'firebrick3']
\ ]

autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces
autocmd Syntax * RainbowParenthesesLoadChevrons
 
" Sparkup
let g:sparkupExecuteMapping = '<C-e>'

" Cscope
let g:cscope_cmd = '/usr/local/bin/cscope'

" Colorscheme
if !has('gui_running')
    let g:solarized_termtrans=1
else
    let g:solarized_termcolors=256
endif

set background=dark
silent! colorscheme solarized

highlight clear SignColumn

" Timeout
set timeoutlen=99999

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <Leader>h <C-w>h 
map <Leader>j <C-w>j
map <Leader>k <C-w>k
map <Leader>l <C-w>l

" Flake8
autocmd FileType python map <buffer> <F7> :call Flake8()<CR>

" Powerline
set laststatus=2

" Wmgraphviz
let g:WMGraphviz_output = 'pdf'
let g:WMGraphviz_viewer = 'open'
autocmd BufWritePost *.dot :call GraphvizShow()

" Numbers
noremap <F2> :NumbersToggle<CR>

" DetectIndent
autocmd BufReadPost * :DetectIndent

" IndentLine
let g:indentLine_indentLevel = 10

" TagBar
let g:tagbar_ctags_bin = s:ctags_path

" MutipleCursor
let g:multicursor_quit = "<Leader>mq"
nnoremap <Leader>ms :<c-u>call MultiCursorSearch('')<cr>
nnoremap <Leader>mw :<c-u>call MultiCursorSearch('<c-r><c-w>')<cr>
nnoremap <Leader>mc :<c-u>call MultiCursorPlaceCursor()<cr>
nnoremap <Leader>mm :<c-u>call MultiCursorManual()<cr>
nnoremap <Leader>mu :<c-u>call MultiCursorRemoveCursors()<cr>
xnoremap <Leader>mc :<c-u>call MultiCursorVisual()<cr>

" Ruby-vim
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" PHP
let g:detectindent_preferred_tabstop = 4

let s:zc_settings_file = expand('~/.vim/configure/zen_coding/user_zen_settings.js')

if filereadable(s:zc_settings_file)
    let g:user_zen_settings = eval(join(readfile(s:zc_settings_file)))
endif

nnoremap <silent> <Leader>/ :nohlsearch<CR>
nnoremap <silent> <Leader>a :FSHere<CR>
nnoremap <silent> <Leader>r :MRU<CR>
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>t :TagbarToggle<CR>
nnoremap <silent> <Leader>s :CtrlP<CR>
nnoremap <silent> <Leader>be :BufExplorer<CR>
nnoremap <silent> <Leader>u :GundoToggle<CR>
nnoremap <silent> <Leader>gr :execute ":silent! Grep ".input("Grep: ")<CR>
nnoremap <silent> <Leader>go :GrepOptions<CR>
nnoremap <silent> <Leader>p %

function! s:CRDidClickInNormalMode()
    if &modifiable
        execute "normal! i\<CR>"
        startinsert
    else
        execute "normal! \<CR>"
    endif
endfunction

command! TriggerKeyEnter :call s:CRDidClickInNormalMode()

nnoremap <CR> :TriggerKeyEnter<CR>
nnoremap <Leader><CR> a<CR>
nnoremap [<CR> <CR><ESC>ko
nnoremap ]<CR> a<CR><ESC>ko

call tinymode#EnterMap("HJKL", "<Leader>l")
call tinymode#Map("HJKL", "w", "normal! k")
call tinymode#Map("HJKL", "a", "normal! h")
call tinymode#Map("HJKL", "s", "normal! j")
call tinymode#Map("HJKL", "d", "normal! l")

function! s:NextNonBlankLnum()
    let lnum = line('.') + 1
    while lnum <= line('$')
        if match(getline(lnum), '^\s*$') < 0
            return lnum
        endif
        let lnum = lunm + 1
    endwhile
    return 0
endfunction

function! s:PrevNonBlankLnum()
    let lnum = line('.') - 1
    while lnum > 0
        if match(getline(lnum), '^\s*$') < 0
            return lnum
        endif
        let lnum = lnum - 1
    endwhile
    return 0
endfunction

function! s:GetWordOfLine(line)
    return matchstr(getline(a:line), '\%'.virtcol('.').'v\%(\w\+\s\=\|.\)')
endfunction

function! s:GetWORDOfLine(line)
    return matchstr(getline(a:line), '\%'.virtcol('.').'v\%(\S\+\s\=\|.\)')
endfunction

imap <expr> <C-g><C-y> <SID>GetWordOfLine(<SID>PrevNonBlankLnum())
imap <expr> <C-g><C-u> <SID>GetWORDOfLine(<SID>PrevNonBlankLnum())
imap <expr> <C-g><C-e> <SID>GetWordOfLine(<SID>NextNonBlankLnum())
imap <expr> <C-g><C-d> <SID>GetWORDOfLine(<SID>NextNonBlankLnum())
imap <expr> <C-g>y <SID>GetWordOfLine(<SID>PrevNonBlankLnum())
imap <expr> <C-g>u <SID>GetWORDOfLine(<SID>PrevNonBlankLnum())
imap <expr> <C-g>e <SID>GetWordOfLine(<SID>NextNonBlankLnum())
imap <expr> <C-g>d <SID>GetWORDOfLine(<SID>NextNonBlankLnum())
