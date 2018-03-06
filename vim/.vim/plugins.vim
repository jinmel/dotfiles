" Plugins {{{
  call plug#begin()
  " NERDTree {{{
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'Xuyuanp/nerdtree-git-plugin'
  " }}}
  " Airline {{{
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
  " }}}
  " Editing {{{
    Plug 'bkad/CamelCaseMotion'
    Plug 'joom/vim-commentary'
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
    Plug 'junegunn/vim-easy-align'
    Plug 'vim-scripts/sudo.vim' " e sudo:/etc/passwd
    Plug 'godlygeek/tabular'
    Plug 'simnalamburt/vim-mundo'
    Plug 'mhinz/vim-startify'
    Plug 'majutsushi/tagbar'
    Plug 'christoomey/vim-tmux-navigator' " tmuxify vim switch pane behavior
  " }}}
  " Completion {{{
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
    Plug 'zchee/deoplete-jedi'
    Plug 'ternjs/tern_for_vim'
    Plug 'mattn/emmet-vim', {
          \  'for': [
          \    'html','haml','jinja','hbs','html.handlebars','xml','css','less','sass'
          \  ]
          \}
  " }}}
  " Fuzzy Finder {{{
    Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
    Plug 'junegunn/fzf.vim'
  " }}}
  " Language {{{
    " Html CSS Javascript {{{
      Plug 'pangloss/vim-javascript'
      Plug 'ap/vim-css-color'
      Plug 'miripiruni/CSScomb-for-Vim'
    " }}}
    " Python {{{
      Plug 'hdima/python-syntax'
      Plug 'vim-syntastic/syntastic'
    " }}}
    " Other {{{
      Plug 'sheerun/vim-polyglot'
    " }}}
  " }}}
  " Themes {{{
    Plug 'flazz/vim-colorschemes'
    Plug 'altercation/vim-colors-solarized'
    Plug 'dfxyz/CandyPaper.vim'
    Plug 'ryanoasis/vim-devicons' "Nerd fonts
  " }}}
  call plug#end()
" }}}
