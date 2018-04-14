" YouCompleteMe {{{
  let g:ycm_confirm_extra_conf = 0
  " let g:ycm_extra_conf_globlist = ['~/dev/*','!~/*']
" }}}
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
  let NERDTreeIgnore=['\.pyc$', '\~$']
  let NERDTreeWinSize=30
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
  let g:clang_format#style = "llvm"
  let g:clang_format#detect_style_file = 1
" }}}

" Tagbar {{{
  let g:tagbar_compact = 1
  let g:tagbar_width = 30
" }}}

" Syntastic {{{
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let b:syntastic_mode = "passive"
  let g:syntastic_always_populate_loc_list = 0
  let g:syntastic_auto_loc_list = 0
  let g:syntastic_check_on_open = 0
  let g:syntastic_check_on_wq = 0
" }}}

" Polyglot {{{
  let g:polyglot_disabled = ['javascript.jsx', 'javascript', 'css', 'latex']
" }}}

" Use deoplete. {{{
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#sources#ternjs#docs = 1
" }}}
"
