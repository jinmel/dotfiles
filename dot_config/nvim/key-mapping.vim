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

nmap <F8> :AerialToggle!<CR>
nmap <F9> :AerialNavToggle<CR>
nmap <F10> :NvimTreeToggle<CR>

"Redraw screen
nmap <Leader>r :redraw!<CR>

"New Tab
nmap <Leader>t :tabnew<CR>

"telescope
" nnoremap <tab> :Telescope buffers<CR>
" nnoremap <C-p> :Telescope find_files<CR>
" nnoremap g<C-p> :Telescope git_files<CR>
" nnoremap <s-tab> :Telescope live_grep<CR>
nnoremap <tab> :Buffers<CR>
nnoremap <C-p> :Files<CR>
nnoremap g<C-p> :GFiles<CR>
nnoremap <s-tab> :Rg<CR>

"Keep selection after indent
vnoremap > ><CR>gv
vnoremap < <<CR>gv

" coc.nvim
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

nmap <leader>gb :Git blame<CR>
nnoremap <silent> <leader>gg :Neogit<CR>

nnoremap <silent> <leader>dt <Plug>(coc-translate-word)
vnoremap <silent> <leader>dt <Plug>(coc-translate-selected)
nnoremap <silent> <leader>dl <Plug>(coc-translate-line)
