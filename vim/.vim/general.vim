" General {{{

set nocompatible
filetype off
set linebreak

set number

syntax on
set mouse=a
set foldmethod=marker
set foldlevelstart=1

filetype plugin indent on

set encoding=utf-8
set fileencodings=utf-8
set tags=./tags,./TAGS,tags,TAGS
set autoindent
set smartindent
set cindent
set background=dark
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
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
set autochdir
set hidden
set shell=/bin/bash

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
" Remember last cursor position
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
" }}}
