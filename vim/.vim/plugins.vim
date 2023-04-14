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
    Plug 'joom/vim-commentary'
    Plug 'rhysd/vim-clang-format'
    Plug 'mindriot101/vim-yapf'
    Plug 'Yggdroot/indentLine'
    " vim-surround {{{
      Plug 'tpope/vim-surround'
      " 'Hello world!' -> <a>Hello world!</a>
      " cs'<q>
      " 'Hello world!' -> Hello world!
      " ds'
    " }}}
    " auto-pairs {{{
      Plug 'jiangmiao/auto-pairs' " Pairs brackets ex) [ -> []
    " }}}
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-abolish' "abbreviation utility
  " }}}
  " VCS {{{
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
  " }}}
  " Utility {{{
    Plug 'mhinz/vim-startify'
    Plug 'majutsushi/tagbar'
    Plug 'tpope/vim-obsession'
    Plug 'christoomey/vim-tmux-navigator' " tmuxify vim switch pane behavior
  " }}}
  " Completion {{{
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'mattn/emmet-vim', {
          \  'for': [
          \    'html','haml','jinja','hbs','html.handlebars','xml','css','less','sass'
          \  ]
          \}
    Plug 'github/copilot.vim', {'branch': 'release'}
  " }}}
  " Fuzzy Finder {{{
    Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
    Plug 'junegunn/fzf.vim'
  " }}}
  " Language {{{
    " Html CSS Javascript {{{
      Plug 'ap/vim-css-color'
      Plug 'miripiruni/CSScomb-for-Vim'
    " }}}
    " Syntax {{{
      Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
      Plug 'glepnir/zephyr-nvim'
    " }}}
  " }}}
  " Themes {{{
    Plug 'altercation/vim-colors-solarized'
    Plug 'ryanoasis/vim-devicons' "Nerd fonts
  " }}}
  call plug#end()
" }}}
