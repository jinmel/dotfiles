" Plugins {{{
  call plug#begin()
  " NERDTree {{{
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'Xuyuanp/nerdtree-git-plugin'
  " }}}
  " Airline {{{
    Plug 'vim-airline/vim-airline', { 'commit': 'ada0ba8ae3eea778d165ec4794ee557df98fab87' }
    Plug 'vim-airline/vim-airline-themes'
  " }}}
  " Editing {{{
    Plug 'maxbrunsfeld/vim-yankstack'
    Plug 'bkad/CamelCaseMotion'
    Plug 'fisadev/vim-isort'
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
    Plug 'junegunn/vim-easy-align'
    Plug 'vim-scripts/sudo.vim' " e sudo:/etc/passwd
    Plug 'godlygeek/tabular'
    Plug 'mhinz/vim-startify'
    Plug 'majutsushi/tagbar'
    Plug 'tpope/vim-obsession'
    Plug 'christoomey/vim-tmux-navigator' " tmuxify vim switch pane behavior
  " }}}
  " Completion {{{
    Plug 'w0rp/ale' " Asynchronous syntastic
    Plug 'autozimu/LanguageClient-neovim', {
          \  'branch': 'next',
          \  'do': 'bash install.sh',
          \}
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/echodoc.vim'
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
    " }}}
    " Other {{{
      Plug 'sheerun/vim-polyglot'
      Plug 'lervag/vimtex'
      Plug 'google/vim-maktaba'
      Plug 'bazelbuild/vim-bazel'
      Plug 'bazelbuild/vim-ft-bzl'
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
