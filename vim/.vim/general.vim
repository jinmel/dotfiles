" General {{{

set nocompatible
set linebreak
set number
syntax on
set mouse=a
set backspace=2
set foldmethod=marker
set foldlevelstart=1

filetype off
filetype plugin indent on

set encoding=utf-8
set fileencodings=utf-8
set tags=./tags,./TAGS,tags,TAGS
set autoindent
set smartindent
set cindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set wildignore=*.pyc
set ignorecase
set smartcase
set hlsearch
set incsearch
set shiftround
set history=1000
set undolevels=1000
set noswapfile
set nobackup
set number
set linespace=3
set hidden
set shell=/bin/bash

set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
set csverb

" Appearance
color dracula
set background=dark

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
" Remember last cursor position
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
