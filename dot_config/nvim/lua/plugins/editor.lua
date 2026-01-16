-- Editor plugins
return {
  -- Comments
  { "numToStr/Comment.nvim", config = true },

  -- Surround
  { "kylechui/nvim-surround", config = true },

  -- Auto pairs
  { "windwp/nvim-autopairs", config = true },

  -- Trouble (diagnostics list)
  { "folke/trouble.nvim", config = true },

  -- Flash (navigation)
  { "folke/flash.nvim", config = true },

  -- Aerial (code outline)
  {
    "stevearc/aerial.nvim",
    opts = {
      on_attach = function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
      end,
    },
  },

  -- Session management
  { "rmagatti/auto-session", config = true },

  -- Tmux navigation
  { "christoomey/vim-tmux-navigator" },

  -- Markdown preview
  { "ellisonleao/glow.nvim", config = true },

  -- FZF
  { "junegunn/fzf", dir = "~/.fzf" },
  { "junegunn/fzf.vim" },
}
