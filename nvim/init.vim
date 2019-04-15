" ----------------------------
" Plugin Manager (Plug) Starts
" ----------------------------
call plug#begin('~/.local/share/nvim/plugged')

" Tree 
" ====
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Fuzzy finder
" ============
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Commenter
" =========
Plug 'scrooloose/nerdcommenter'

" Tern (Language support)
" =======================
Plug 'ternjs/tern_for_vim', { 'do' : 'npm install'}

" Easymotion
" ==========
Plug 'easymotion/vim-easymotion'

" Ale (Language Linting and fix)
" =======================
Plug 'w0rp/ale'

" Rust Lang
" =======================
Plug 'rust-lang/rust.vim'

" Colors
" ======
Plug 'morhetz/gruvbox'

call plug#end()

" --------------------------
" Plugin Manager (Plug) Ends
" --------------------------

" ==========================================================

" --------------------
" Plugin Config Starts
" --------------------

" Nerd Tree
" =========
map <C-b> :NERDTreeToggle<CR>

" Gruvbox
" =======
set background=dark
colorscheme gruvbox
" Enable Transprant background
hi Normal guibg=NONE ctermbg=NONE
" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif


" Tern
" ====
imap <C-Space> <C-x><C-o>

" Ale (Language Linting and fix)
" =======================
" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['prettier', 'eslint']
" Fix on save
let g:ale_fix_on_save = 1
" Auto comp
let g:ale_completion_enabled = 1

" FZF
" =======
map <C-p> :FZF<CR>

" Easymotion
" ==========
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" ------------------
" Plugin Config Ends
" ------------------

" ==========================================================

" --------------
" mapping Starts 
" --------------

" ======
" Global
" ======

" Leader
let mapleader = ' '
" Use arrow keys to adjust window
map <Up> <C-W>-
map <Down> <C-W>+
map <Left> <c-w><
map <Right> <c-w>>

" ===========
" Insert Mode
" ===========
imap jj <Esc>

" ===========
" Normal Mode
" ===========
nmap <Leader>s :w<CR>
nmap <Leader>e :q<CR>
nmap <Leader>fe :q!<CR>

nmap J 5j
nmap K 5k
nmap H 5h
nmap L 5l

" tabs
"nnoremap gt <Leader>h
"nnoremap gT <Leader>l

nnoremap D d$
nnoremap Y y$

" Split window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ------------
" mapping Ends
" ------------

" ==========================================================

" ------------------
" Lang Related Start
" ------------------
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" https://vim.fandom.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=longest,menuone

" ----------------
" Lang Related End
" ----------------

" ---------------
" Defalut Configs
" ---------------

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab
set number
set cursorline
set listchars=tab:>-,trail:-
set list
set mouse=a
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab autoindent smartindent

set nrformats-=octal

if !has('nvim') && &ttimeoutlen == -1
  set ttimeout
  set ttimeoutlen=100
endif

set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set laststatus=2
set ruler
set wildmenu

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

if &shell =~# 'fish$' && (v:version < 704 || v:version == 704 && !has('patch276'))
  set shell=/usr/bin/env\ bash
endif

set autoread

" ------------
" Defalut Configs 
" ------------
