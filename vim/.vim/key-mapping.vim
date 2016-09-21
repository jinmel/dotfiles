" Some Useful Key Mappings {{{
"for unhighlighing the selections
nmap <Space>x :let @/=''<CR>

"split switch
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"System clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"Keep the cursor in the same place after yank
vmap y ygv<Esc>

nmap <F5> :GundoToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <F11> :NERDTreeTabsToggle<CR>

"Redraw screen
nmap <Leader>r :redraw!<CR>

"New Tab
nmap <Leader>t :tabnew<CR>

"Open buffer
nmap <tab> :Buffer<CR>

"Keep selection after indent
vnoremap > ><CR>gv
vnoremap < <<CR>gv

" "Camel case motion (with shift)
map <Space>w <Plug>CamelCaseMotion_w
map <Space>b <Plug>CamelCaseMotion_b
map <Space>e <Plug>CamelCaseMotion_e
" }}}

