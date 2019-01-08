" plug --- plugin manager
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'ayu-theme/ayu-vim'
call plug#end()


" Neard tree toggle
map <C-b> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 20
let g:NERDTreeMinimalUI=1
" Open file in new tab
"let NERDTreeMapOpenInTab='T'
" start nead tree when opening a dir
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" my sensible setting list
set mouse=a
let mapleader=' '
set nocompatible
filetype plugin on
syntax on
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab autoindent smartindent
set number

" color related settings
set background=dark
set termguicolors     " enable true colors support
colorscheme industry
set t_ZH=^[[3m
set t_ZR=^[[23m
highlight Comment cterm=italic

" Simplify using tabs
nnoremap <M-h> gT
nnoremap <M-l> gt
nnoremap T :tabnew<cr>

"find the next match as we type the search
set incsearch
set ignorecase
set smartcase
"wrap
set wrap
set linebreak

set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" editing
nnoremap <LEADER>o o<Esc>
nnoremap <LEADER>O O<Esc>
nnoremap <LEADER>c 0y$

" Open new splits to right and bottom
set splitbelow
set splitright

" moving to end of whatever
nnoremap <LEADER>i ^i <Esc>vk$d

" Remaping movements in split screen
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" saving and exiting remapings
nnoremap D d$
nnoremap Y y$
nnoremap <LEADER>s :w<CR>
nnoremap <LEADER>e :q<CR>
nnoremap <LEADER>se :x<CR>

" normal mode switch
inoremap jj <Esc>
inoremap <C-W>= <Esc>ggVG=i
" load vimrc
map <LEADER>ss :so %<CR>

" code folding
nnoremap <LEADER><LEADER> za
set foldmethod=indent
set foldlevel=99

" Disabling arrows key support an using them for window resizing
map <Up> <C-W>-
map <Down> <C-W>+
map <Left> <c-w><
map <Right> <c-w>>
" Moving fast
nmap J 5j
nmap K 5k
vmap J 5j
vmap K 5k
xmap J 5j
xmap K 5k
" italtc Support
set t_ZH=^[[3m
set t_ZR=^[[23m

"Recording shortcut
noremap Q @q

" Bash style autocmp
set wildmode=longest,list,full
set wildmenu

" Git gutter setting
" dec time
set updatetime=100
nnoremap git :GitGutterToggle<CR>

" Indentaion ayu-vim
" IndentLine {{
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}
"
"

"Just for qtCreator fakeVim
nnoremap <C-W>s :qtsave<CR>
nnoremap <C-W>e :qtrun<CR>

