" Plugins {{{
  call plug#begin()
  " NERDTree {{{
      Plug 'nvim-neo-tree/neo-tree.nvim', { 'branch': 'v2.x' }
    " Deps for neo-tree
      Plug 'nvim-lua/plenary.nvim'
      Plug 'nvim-tree/nvim-web-devicons'
      Plug 'MunifTanjim/nui.nvim', {'branch': 'main'}
    " }}}
  " Airline {{{
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'edkolev/tmuxline.vim'
  " }}}
  " Editing {{{
    Plug 'maxbrunsfeld/vim-yankstack'
    Plug 'terrortylor/nvim-comment'
    Plug 'rhysd/vim-clang-format'
    Plug 'Yggdroot/indentLine'
    " vim-surround {{{
      Plug 'tpope/vim-surround'
      " 'Hello world!' -> <a>Hello world!</a>
      " cs'<q>
      " 'Hello world!' -> Hello world!
      " ds'
    " }}}
    " auto-pairs {{{
      Plug 'windwp/nvim-autopairs'
    " }}}
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-abolish' "abbreviation utility
  " }}}
  " VCS {{{
    Plug 'tpope/vim-fugitive'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'NeogitOrg/neogit'
    Plug 'sindrets/diffview.nvim'
    " }}}

  " Utility {{{
    Plug 'mhinz/vim-startify'
    Plug 'majutsushi/tagbar'
    Plug 'tpope/vim-obsession'
    Plug 'christoomey/vim-tmux-navigator' " tmuxify vim switch pane behavior
  " }}}
  " Completion {{{
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'github/copilot.vim', {'branch': 'release'}
  " }}}
  " Fuzzy Finder {{{
    Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
    Plug 'junegunn/fzf.vim'
  " }}}
  " Highlighting {{{
    " Html CSS Javascript {{{
      Plug 'ap/vim-css-color'
    " }}}
    " Syntax {{{
      Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " }}}
  " }}}
  " Themes {{{
    Plug 'glepnir/zephyr-nvim'
    Plug 'folke/tokyonight.nvim'
    Plug 'altercation/vim-colors-solarized'
    Plug 'ryanoasis/vim-devicons' "Nerd fonts
  " }}}
  call plug#end()
" }}}
lua << EOF
require("nvim-autopairs").setup {}
require("nvim_comment").setup()
require("gitsigns").setup()
require("neogit").setup()
EOF
