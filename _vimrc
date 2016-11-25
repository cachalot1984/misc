version 6.0
if &cp | set nocp | endif
map  h
map [G ""
map [2~ i
map OC l
map OD h
map OB j
map OA k
map [3~ x
map OE ""
map O5C w
map O5D b
map O5B ^F
map O5A ^B
map O2C w
map O2D b
map O2B ^F
map O2A ^B
map [3;5~ x
map [2;5~ i
map [3;2~ x
map [2;2~ i
map O5F $
map O5H 0
map O2F $
map O2H 0
map OF $
map OH 0
map [E ""
map [D h
map [C l
map [B j
map [A k
map [4~ $
map [1~ 0
map [F $
map [H 0
map [6;5~ 
map [5;5~ 
map [6;2~ 
map [5;2~ 
map [6~ 
map [5~ 
map On .
map Op 0
map Os 3
map Or 2
map Oq 1
map Ov 6
map Ou 5
map Ot 4
map Oy 9
map Ox 8
map Ow 7
map OM 
map Ol +
map Ok +
map Om -
map Oj *
map Oo :
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
map  h
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetBrowseX(expand("<cWORD>"),0)
map <Del> x
map! [3~ <Del>
map! OE <Insert>
map! O5D <S-Left>
map! O5C <S-Right>
map! O5B <PageDown>
map! O5A <PageUp>
map! O2D <S-Left>
map! O2C <S-Right>
map! O2B <PageDown>
map! O2A <PageUp>
map! [3;5~ <Del>
map! [2;5~ <Insert>
map! [3;2~ <Del>
map! [2;2~ <Insert>
map! O5F <End>
map! O5H <Home>
map! O2F <End>
map! O2H <Home>
map! OF <End>
map! OH <Home>
map! [E <Insert>
map! [D <Left>
map! [C <Right>
map! [B <Down>
map! [A <Up>
map! [4~ <End>
map! [1~ <Home>
map! [F <End>
map! [H <Home>
map! On .
map! Op 0
map! Os 3
map! Or 2
map! Oq 1
map! Ov 6
map! Ou 5
map! Ot 4
map! Oy 9
map! Ox 8
map! Ow 7
map! OM 
map! Ol +
map! Ok +
map! Om -
map! Oj *
map! Oo :
let &cpo=s:cpo_save
unlet s:cpo_save



" -----------------------------------------------------------------------------
"  Vundle plugin manager
" -----------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'a'
Plugin 'Command-T'
"Plugin 'ctrlp'
Plugin 'DrawIt'
"Plugin 'fugitive'
Plugin 'genutils'
Plugin 'Mark'
Plugin 'matchit'
Plugin 'NERDTree'
Plugin 'snipMate'
"Plugin 'SuperTab'
Plugin 'surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" -----------------------------------------------------------------------------
" Personal setting:
" -----------------------------------------------------------------------------
" ---------------------------
"  Misc
imap  <ESC>
set showcmd
set history=1000
"set number
set ruler
"set nowrap
set autoindent
set cindent
set shiftwidth=4
set expandtab
set tabstop=4
"set softtabstop=4
set expandtab
set hlsearch
"set ignorecase
"set nohlsearch
set mouse=nv
set backspace=indent,eol,start
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=en
set modelines=0
"set showmatch
filetype on
"set t_Co=256
syntax enable
syntax on

"paste(p) don't overwrite original yank(y)
xnoremap p pgvy

" ---------------------------
" taglist
"set tags=tags;
"set autochdir
set tags=$AEROS_ROOT/tags
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Auto_Highlight_Tag=1
let Tlist_Auto_Update=1
let Tlist_Use_Right_Window=1
nmap tm :TlistToggle<cr>

" ---------------------------
" winmanager
let g:winManagerWindowLayout="TagList"
let g:winManagerWidth=32
nmap wm :WMToggle<cr>

" ---------------------------
" cscope
set nocscopeverbose
cs add $AEROS_ROOT/cscope.out $AEROS_ROOT

" ---------------------------
" buftabs
nmap <c-h> :bprev<cr>
nmap <c-l> :bnext<cr>

" ---------------------------
" Toggle auto-indenting for code paste
" procedure:
"  * Start insert mode.
"  * Press F12 (toggles the 'paste' option on).
"  * Use your terminal to paste text from the clipboard.
"  * Press F12 (toggles the 'paste' option off).
set pastetoggle=<F12>

" ---------------------------
"  Command-T
let g:CommandTMaxHeight = 30
let g:CommandTMaxFiles = 800000
let g:CommandTInputDebounce = 200
let g:CommandTFileScanner = 'watchman'
let g:CommandTMaxCachedDirectories = 10
let g:CommandTSmartCase = 1

" ---------------------------
"  SuperTab
let g:SuperTabDefaultCompletionType = "context"

" ---------------------------
" gvim colorscheme
if has("gui_running") 
    color desert
endif

