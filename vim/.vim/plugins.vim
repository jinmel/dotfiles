" Plugins {{{
  call plug#begin()
  " Deps {{{
    Plug 'nvim-lua/plenary.nvim'
    Plug 'MunifTanjim/nui.nvim'
    Plug 'rcarriga/nvim-notify'
  " }}}
  " File browser tree {{{
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'nvim-tree/nvim-tree.lua'
  " }}}
  " Statusline {{{
    Plug 'nvim-lualine/lualine.nvim'
  " }}}
  " Editing {{{
    Plug 'numToStr/Comment.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'kylechui/nvim-surround'
    Plug 'windwp/nvim-autopairs'
    Plug 'folke/trouble.nvim'
  " }}}
  " VCS {{{
    Plug 'tpope/vim-fugitive'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'sindrets/diffview.nvim'
    Plug 'akinsho/git-conflict.nvim'
  " }}}
  " Utility {{{
    Plug 'goolord/alpha-nvim'
    Plug 'folke/noice.nvim'
    Plug 'folke/flash.nvim'
    Plug 'stevearc/aerial.nvim'
    Plug 'rmagatti/auto-session'
    Plug 'christoomey/vim-tmux-navigator' " tmuxify vim switch pane behavior
    Plug 'ellisonleao/glow.nvim'
  " }}}
  " Completion {{{
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'github/copilot.vim'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  " }}}
  " Fuzzy Finder {{{
    " Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
    Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
    Plug 'junegunn/fzf.vim'
  " }}}
  " Highlighting {{{
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'iden3/vim-circom-syntax'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " }}}
  " Themes {{{
    Plug 'glepnir/zephyr-nvim'
    Plug 'folke/tokyonight.nvim'
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  " }}}
  call plug#end()
" }}}
lua << EOF
require("nvim-autopairs").setup {}
require('gitsigns').setup{
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']c', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    map('n', '[c', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    -- Actions
    map('n', '<leader>hs', gs.stage_hunk)
    map('n', '<leader>hr', gs.reset_hunk)
    map('v', '<leader>hs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
    map('v', '<leader>hr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
    map('n', '<leader>hS', gs.stage_buffer)
    map('n', '<leader>hu', gs.undo_stage_hunk)
    map('n', '<leader>hR', gs.reset_buffer)
    map('n', '<leader>hp', gs.preview_hunk)
    map('n', '<leader>hb', function() gs.blame_line{full=true} end)
    map('n', '<leader>tb', gs.toggle_current_line_blame)
    map('n', '<leader>hd', gs.diffthis)
    map('n', '<leader>hD', function() gs.diffthis('~') end)
    map('n', '<leader>td', gs.toggle_deleted)

    -- Text object
    map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}
require('lualine').setup {
  options = {
    theme = 'tokyonight'
  },
  tabline = {
    lualine_a = {'buffers'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'tabs'}
  },
  extensions = {'fzf', 'neo-tree', 'fugitive'},
  sections = {
    lualine_a = {
      {
          'filename',
          path = 1,
      }
    },
  }
}
require('alpha').setup(require'alpha.themes.startify'.config)
require('nvim-surround').setup()
require('auto-session').setup()
require('aerial').setup {
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
  end
}
require('Comment').setup()
require('colorizer').setup()
require("nvim-tree").setup()
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
require('noice').setup()
require('trouble').setup()
require('flash').setup()
require('glow').setup()
require('git-conflict').setup()
require('ibl').setup()
-- require('telescope').setup({
--   defaults = {
--     mappings = {
--       i = {
--         ["<esc>"] = require('telescope.actions').close,
--         ["<C-Down>"] = require('telescope.actions').cycle_history_next,
--         ["<C-Up>"] = require('telescope.actions').cycle_history_prev,
--       },
--     },
--   },
-- })
EOF
