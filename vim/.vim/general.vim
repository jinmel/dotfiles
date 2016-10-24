" General {{{

set nocompatible
set linebreak
set number
syntax on
set mouse=a
set backspace=2
set foldmethod=marker
set foldlevelstart=1

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

if has("cscope")
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
" Remember last cursor position
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
