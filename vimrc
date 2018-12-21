" plug --- plugin manager
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'tpope/vim-vinegar'
Plug 'airblade/vim-gitgutter'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'ayu-theme/ayu-vim'
call plug#end()

" ale Javascript
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}

let g:ale_fix_on_save = 1

" Neard tree toggle
map <C-b> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40
let g:NERDTreeMinimalUI=1
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
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

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

" highlight tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" Bash style autocmp
set wildmode=longest,list,full
set wildmenu

" Git gutter setting
" dec time
set updatetime=100
nnoremap git :GitGutterToggle<CR>
