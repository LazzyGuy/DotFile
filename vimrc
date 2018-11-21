" plug --- plugin manager  
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()
" }}
let mapleader=' '
" FZF file commands {{{
let g:fzf_nvim_statusline = 0 " disable statusline overwriting

nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>A :Windows<CR>
nnoremap <silent> <leader>; :BLines<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
nnoremap <silent> <leader>. :AgIn 
" }}}


" autocomplete engien {{
let g:deoplete#enable_at_startup = 1
" }}
" settings for vim wiki to work properly {{
set nocompatible
filetype plugin on
syntax on
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab autoindent smartindent cindent
" }}

" theme {{
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox
" }}

let g:airline_powerline_fonts = "1"
" InsurajdentLine {{
let g:indentLine_char = '.'
let g:indentLine_first_char = '.'
le g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}


set number
" split navigations {{

" }}


" editing 
nnoremap <LEADER>o o<Esc>
nnoremap <LEADER>O O<Esc>
nnoremap <LEADER>c 0y$

" Remaping movements in split screen {{
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


" Impo remappings

inoremap jj <Esc>
map <LEADER>ss :so %<CR>

set splitbelow
set splitright

" code folding 
" &
" Enable folding with the spacebar {{
nnoremap <space>f za
set foldmethod=indent
set foldlevel=99
" }}

" Disabling arrows key support {{
map <Up> <C-W>-
map <Down> <C-W>+
map <Left> <c-w><
map <Right> <c-w>>
" }}

" italtc Support {{
set t_ZH=^[[3m
set t_ZR=^[[23m
" }}


" transparacy {{
hi Normal guibg=NONE ctermbg=NONE
" }}

" Enabling mouse
set mouse=a

" highlight tabs and trailing spaces
set listchars=tab:>-,trail:-
set list

" highlight the current line
set cursorline

" completion
set completefunc=syntaxcomplete#Complete
