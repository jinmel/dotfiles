" CSS Comb {{{
  autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :CSScomb
" }}}
" Pymode {{{
  let g:pymode_rope = 0
  let g:pymode_rope_completion = 0 "disable rope completion
  let g:pymode_lint = 0
  let g:python_highlight_all = 1
  autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
  autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" }}}
" Airline {{{
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
  set laststatus=2
  set t_Co=256
" }}}
" NERDTree {{{
  let g:NERDTreeMapChangeRoot =  "`"
  let g:WebDevIconsNerdTreeGitPluginForceVAlign=1

  let NERDTreeMinimalUI=1
  let NERDTreeDirArrows=1
  let NERDTreeShowHidden=1
  let NERDTreeQuitOnOpen=0
  let NERDTreeIgnore=['\.pyc$', '\~$', 'bazel-.+$[[dir]]']
  let NERDTreeWinSize=40
" }}}

" Emmet (Zen coding) {{{
  let g:user_emmet_mode='i'
  let g:user_emmet_leader_key='<C-Y>'
  let g:user_emmet_settings={
        \ 'xml': {
        \   'extends': 'html',
        \},
        \ 'haml': {
        \   'extends': 'html',
        \},
        \ 'jinja': {
        \   'extends': 'html',
        \},
        \ 'jsx': {
        \   'extends': 'html',
        \},
        \ 'hbs': {
        \   'extends': 'html',
        \},
        \ 'html.handlebars': {
        \   'extends': 'html',
        \},
      \}
" }}}

" vim-clang-format {{{
  let g:clang_format#style = "google"
  let g:clang_format#detect_style_file = 1
" }}}

" Tagbar {{{
  let g:tagbar_compact = 1
  let g:tagbar_width = 30
" }}}

" Polyglot {{{
  let g:polyglot_disabled = ['javascript.jsx', 'javascript', 'css', 'latex']
" }}}

" Use deoplete. {{{
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#sources#ternjs#docs = 1
" }}}
" Ctrlp {{{
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
" }}}
" Ale {{{
  let g:ale_linters = {
        \ 'python': ['pylint', 'yapf', 'isort'],
        \ 'cpp': ['cpplint'],
        \}
" }}}
" Langserver {{{
  set hidden

  let g:LanguageClient_serverCommands = {
      \ 'cpp': ['/usr/local/opt/llvm/bin/clangd'],
      \ 'python': ['/Users/jinsuk/.pyenv/versions/neovim3/bin/pyls'],
      \ }
" }}}

" Yapf {{{
  let g:yapf_style = "google"
" }}}
