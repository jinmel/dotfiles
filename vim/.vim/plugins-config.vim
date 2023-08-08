" Airline {{{
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_powerline_fonts = 1
  let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
  let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
  set laststatus=2
  set t_Co=256
" }}}

" vim-clang-format {{{
  let g:clang_format#style = "google"
  let g:clang_format#detect_style_file = 1
" }}}

" Tagbar {{{
  let g:tagbar_compact = 1
  let g:tagbar_width = 30
" }}}
" IndentLine {{{
  let g:indentLine_setConceal = 0
" }}}

" coc {{{
  let g:coc_global_extensions = ['coc-json', 'coc-pyright', 'coc-tsserver', 'coc-solidity', 'coc-rls', 'coc-emmet']
" }}}

" copilot {{{
  let g:copilot_filetypes = {'gitcommit': v:true}
" }}}

" lazygit {{{
  let g:lazygit_floating_window_use_plenary = 1
  let g:lazygit_use_neovim_remote = 0
" }}}

lua << EOF
  require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "python", "svelte", "typescript", "javascript", "rust", "go" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (for "all")
    ignore_install = { },

    ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

    highlight = {
      enable = true,

      -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
      -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
      -- the name of the parser)
      -- list of language that will be disabled
      disable = { "" },

      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
    },
  }
EOF
