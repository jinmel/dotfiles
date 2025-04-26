let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
set secure
set nomodeline
set nocompatible
set linebreak
set number
set mouse=a
set backspace=indent,eol,start
set foldmethod=marker
set foldlevelstart=1

syntax enable
filetype plugin indent on

set encoding=utf-8
set fileencodings=utf-8
set autoindent
set smartindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
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
set cmdheight=1
set regexpengine=0
set updatetime=100

set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Color characters exceeding 120 characters
if exists('+colorcolumn')
  set colorcolumn=120
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
