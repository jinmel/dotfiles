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
    Plug 'gcmt/wildfire.vim'
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
    Plug 'vim-scripts/Align'
    Plug 'vim-scripts/sudo.vim' " e sudo:/etc/passwd
    Plug 'godlygeek/tabular'
    Plug 'sjl/gundo.vim'
    Plug 'mhinz/vim-startify'
    Plug 'majutsushi/tagbar'
    Plug 'christoomey/vim-tmux-navigator' " tmuxify vim switch pane behavior
  " }}}
  " Completion {{{
    Plug 'ervandew/supertab'
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
    Plug 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer'}
    Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}
    Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
    Plug 'mattn/emmet-vim', {
          \  'for': [
          \    'html','haml','jinja','hbs','html.handlebars','xml','css','less','sass'
          \  ]
          \}
  " }}}
  " Fuzzy Finder {{{
    Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
    Plug 'junegunn/fzf.vim'
    Plug 'ctrlpvim/ctrlp.vim'
  " }}}
  " Language {{{
    " Html CSS Javascript {{{
      Plug 'pangloss/vim-javascript'
      Plug 'mxw/vim-jsx'
      Plug 'ap/vim-css-color'
      Plug 'miripiruni/CSScomb-for-Vim'
    " }}}
    " Python {{{
      Plug 'davidhalter/jedi-vim'
      Plug 'hdima/python-syntax'
    " }}}
    " Other {{{
      Plug 'sheerun/vim-polyglot'
    " }}}
  " }}}
  " Themes {{{
    Plug 'junegunn/seoul256.vim'
    Plug 'vim-scripts/wombat256.vim'
    Plug 'altercation/vim-colors-solarized'
    Plug 'flazz/vim-colorschemes'
    Plug 'dfxyz/CandyPaper.vim'
    Plug 'dracula/vim' "dracula theme
    Plug 'ryanoasis/vim-devicons' "Nerd fonts
  " }}}
  call plug#end()
" }}}
