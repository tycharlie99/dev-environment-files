let mapleader = " "

set guicursor=n:block,i:ver25

se noswapfile
set nobackup
set nowritebackup

set relativenumber
set number

syntax on

set clipboard=unnamed

set hlsearch
set ignorecase
set smartcase

nnoremap <leader>h :noh<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==


set wrap
set linebreak

set tabstop=2 
set shiftwidth=2
set expandtab 
set autoindent 

set cursorline 
set backspace=indent,eol,start 
highlight Comment ctermfg=Cyan

set updatetime=100

set list
set listchars=eol:↴,tab:>-,trail:·
