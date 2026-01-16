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

"fzf
nnoremap <tab> :Buffers<CR>
nnoremap <C-p> :Files<CR>
nnoremap g<C-p> :GFiles<CR>
nnoremap <s-tab> :Rg<CR>

"Keep selection after indent
vnoremap > ><CR>gv
vnoremap < <<CR>gv

"Git
nmap <leader>gb :Git blame<CR>
nnoremap <silent> <leader>gg :Neogit<CR>
