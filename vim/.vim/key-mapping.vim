" Some Useful Key Mappings {{{

nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

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

nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <F11> :NERDTreeTabsToggle<CR>

"Redraw screen
nmap <Leader>r :redraw!<CR>

"New Tab
nmap <Leader>t :tabnew<CR>

"fzf.vim
nmap <tab> :Buffer<CR>
nmap <C-p> :Files<CR>
nmap g<C-p> :GitFiles<CR>
nmap <s-tab> :Tags<CR>

"clang-format
autocmd FileType c,cpp,objc nnoremap <buffer>gf :ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer>gf :ClangFormat<CR>

"yapf
autocmd FileType python nnoremap <buffer>gf :Yapf<CR>

"Keep selection after indent
vnoremap > ><CR>gv
vnoremap < <<CR>gv

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"Mouse
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

" "Camel case motion (with shift)
map <Space>w <Plug>CamelCaseMotion_w
map <Space>b <Plug>CamelCaseMotion_b
map <Space>e <Plug>CamelCaseMotion_e

" Langclient(COC)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
" }}}
