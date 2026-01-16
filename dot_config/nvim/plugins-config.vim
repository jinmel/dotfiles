" coc {{{
let g:coc_global_extensions = ['coc-json', 'coc-pyright', 'coc-tsserver', 'coc-solidity', 'coc-rust-analyzer', 'coc-emmet', 'coc-go']
" }}}
" copilot {{{
let g:copilot_filetypes = { 'gitcommit': v:true  }
" }}}

" vim-go {{{
" disable vim-go completion since it is already handled by coc
let g:go_code_completion_enabled = 0
let g:go_fmt_command = "gofmt"
"}}}
