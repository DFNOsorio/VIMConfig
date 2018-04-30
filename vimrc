execute pathogen#infect()
call pathogen#helptags()
set tabstop=4
set shiftwidth=4
set number
syntax on
syntax enable
set ruler
set autoindent
set backspace=indent,eol,start
set smartcase
set hlsearch
set incsearch 
set autowrite
set t_Co=256

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

:let mapleader = ","
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

set noerrorbells 
set novisualbell
autocmd! GUIEnter * set vb t_vb=

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'

let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']
let NERDTreeWinSize=40

autocmd BufEnter * lcd %:p:h
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap " :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<BS>'

let g:ycm_autoclose_preview_window_after_completion = 1

let g:auto_save = 1 
let g:auto_save_events = ["InsertLeave"]

autocmd VimLeave * NERDTreeClose

