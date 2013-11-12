" Vim configuration
" Author by Tang Tianyong

" Be Vim
set nocompatible

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gb18030,cp936

" Tab and space
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Indent
set cindent
set autoindent
set cinoptions=(sus

" Display 2-bytes character
set ambiwidth=double

" Syntax
syntax enable
syntax on

" Highlight current column and line
set cursorcolumn
set cursorline
au BufLeave * set nocursorline nocursorcolumn
au BufEnter * set cursorline cursorcolumn

" Font
set guifont=Monaco:h16

" Backspace
set backspace=indent,eol,start

" Search rules
set is
set hlsearch
set ignorecase

" Wrap and break
set wrap
set linebreak
let &showbreak="↪ "
set whichwrap=b,s,<,>,[,]

" Break at multi-byte character
set formatoptions+=mM

" No swap file
set noswapfile

" Enable fold
set foldenable

" Show command list
set wildmenu

" Show number
set number

" Show ruler
set ruler

" Auto source the .vimrc
autocmd! BufWritePost .vimrc source ~/.vimrc

" Close file type
filetype off

" Vundle
set runtimepath+=~/.vim/bundle/vundle/
set runtimepath+='~/.vim/bundle/sparkup/vim/'

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
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/Gundo'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'Raimondi/delimitMate'
Bundle 'jsedivy/vim-sparkup'
Bundle 'scrooloose/syntastic'
Bundle 'derekwyatt/vim-fswitch'
Bundle 'kshenoy/vim-signature'
Bundle 'embear/vim-foldsearch'
Bundle 'vim-scripts/EasyGrep'
Bundle 'vim-scripts/mru.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'godlygeek/tabular'
Bundle 'Yggdroot/indentLine'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'myusuf3/numbers.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-entire'
Bundle 'tang3w/zencoding-vim'
Bundle 'tang3w/detectindent'
Bundle 'altercation/vim-colors-solarized'
Bundle 'wikitopian/hardmode'
Bundle 'vim-scripts/lastpos.vim'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'vim-scripts/camelcasemotion'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-abolish'
Bundle 'paradigm/vim-multicursor'
Bundle 'vim-scripts/SyntaxMotion.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tmhedberg/indent-motion'
Bundle 'kballenegger/vim-autoreadwatch'
Bundle 'Shougo/neocomplcache'
Bundle 'guyht/vim-task'

Bundle 'vim-ruby/vim-ruby'
Bundle 'bronson/vim-ruby-block-conv'
Bundle 'tpope/vim-endwise'
Bundle 'tang3w/wmgraphviz.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'csexton/jekyll.vim'
Bundle 'msanders/snipmate.vim'

filetype plugin indent on

" Session
let g:session_autosave = 'yes'

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
let g:sparkupExecuteMapping='<C-e>'

" Colorscheme
silent! colorscheme Tomorrow-Night

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

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <Leader>h <C-w>h 
map <Leader>j <C-w>j
map <Leader>k <C-w>k
map <Leader>l <C-w>l

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

" ZenCoding
let s:zc_settings_file = expand('~/.vim/configure/zen_coding/user_zen_settings.js')

if filereadable(s:zc_settings_file)
    let g:user_zen_settings = eval(join(readfile(s:zc_settings_file)))
endif

" vim-task
autocmd BufNewFile,BufRead todo.txt,*.task,*.tasks setfiletype task

" Copy previous or next nonblank line
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

" Maps
nnoremap <silent> <Leader>/ :nohlsearch<CR>
nnoremap <silent> <Leader>a :FSHere<CR>
nnoremap <silent> <Leader>r :MRU<CR>
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>t :TagbarToggle<CR>
nnoremap <silent> <Leader>be :BufExplorer<CR>
nnoremap <silent> <Leader>u :GundoToggle<CR>
nnoremap <silent> <Leader>gr :execute ":silent! Grep ".input("Grep: ")<CR>
nnoremap <silent> <Leader>go :GrepOptions<CR>
nnoremap <silent> <Leader>m %
nnoremap <silent> <Leader>s :w<CR>
nnoremap <silent> <Leader><Leader>s :w!<CR>

" Jekyll
let g:jekyll_path = "~/Workspace/Repository/tang3w.github.com"
map <Leader>jb  :JekyllBuild<CR>
map <Leader>jn  :JekyllPost<CR>
map <Leader>jl  :JekyllList<CR>
