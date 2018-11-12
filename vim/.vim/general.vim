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
set shiftwidth=2
set softtabstop=2
set tabstop=4
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

" Color characters exceeding 80 characters
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

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

" Set python executable directory
let g:python3_host_prog = '/Users/jinsuk/.pyenv/versions/neovim3/bin/python'
let g:python_host_prog = '/Users/jinsuk/.pyenv/versions/neovim2/bin/python'
