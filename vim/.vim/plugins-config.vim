" YouCompleteMe {{{
  let g:ycm_confirm_extra_conf = 1
  " let g:ycm_extra_conf_globlist = ['~/dev/*','!~/*']
" }}}
" Pymode {{{
  let g:pymode_rope = 0
  let g:pymode_rope_completion = 0 "disable rope completion
  let g:pymode_lint = 0
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

  nnoremap <silent> <F11> :NERDTreeToggle<CR>
  let NERDTreeMinimalUI=1
  let NERDTreeDirArrows=1
  let NERDTreeShowHidden=1
  let NERDTreeQuitOnOpen=0
  let NERDTreeIgnore=['\.pyc$', '\~$']
  let NERDTreeWinSize=25
" }}}

" IndentLine {{{
"let g:indentLine_char='|'
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

" Polyglot {{{
  let g:polyglot_disabled = ['javascript.jsx', 'javascript', 'css', 'scala', 'sml', 'ruby']
" }}}
