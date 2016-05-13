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
  " CamelCaseMotion {{{
    Plug 'bkad/CamelCaseMotion'
  " }}}
  " VCS {{{
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
  " }}}
  " Commentary {{{
    Plug 'joom/vim-commentary'
  " }}}
  " Utility Scripts {{{
    Plug 'vim-scripts/Align'
    Plug 'vim-scripts/sudo.vim' " e sudo:/etc/passwd
    Plug 'vim-scripts/taglist.vim'
  " }}}
  " Snippets {{{
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
  " }}}
  " Brackets {{{
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
  " }}}
  " Completion {{{
    Plug 'Valloric/YouCompleteMe', {'do': './install.py --clang-completer'}
    Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}
    Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
  " }}}
  " Wildfire {{{
    Plug 'gcmt/wildfire.vim'
  " }}}
  " IndentLine {{{
    Plug 'Yggdroot/indentLine'
  " }}}
  " HTML/CSS {{{
    Plug 'mattn/emmet-vim', {
          \  'for': [
          \    'html','haml','jinja','hbs','html.handlebars','xml','css','less','sass'
          \  ]
          \}
  " }}}
  " Fuzzy Finder {{{
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
    Plug 'junegunn/fzf.vim'
  " }}}
  " Utility {{{
    Plug 'mhinz/vim-startify'
  " }}}
  " Front End {{{
    Plug 'sheerun/vim-polyglot'
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'
    Plug 'ap/vim-css-color'
    Plug 'miripiruni/CSScomb-for-Vim'
    Plug 'kchmck/vim-coffee-script'
  " }}}
  " Language {{{
    Plug 'klen/python-mode'
    Plug 'derekwyatt/vim-scala'
    Plug 'vim-ruby/vim-ruby'
    Plug 'cypok/vim-sml'
  " }}}
  " Framework {{{
    Plug 'gre/play2vim'
    Plug 'ensime/ensime-vim' "for scala
    let EnErrorStyle='EnError'
  " }}}
  " Themes {{{
    Plug 'junegunn/seoul256.vim'
    Plug 'vim-scripts/wombat256.vim'
    Plug 'altercation/vim-colors-solarized'
    Plug 'flazz/vim-colorschemes'
    Plug 'dfxyz/CandyPaper.vim'
    Plug 'ryanoasis/vim-devicons' "Nerd fonts
  " }}}
  call plug#end()
" }}}


