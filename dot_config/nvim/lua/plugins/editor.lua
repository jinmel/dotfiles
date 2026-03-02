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
  {
    "folke/flash.nvim",
    opts = {},
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },

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
  { "junegunn/fzf" },
  { "junegunn/fzf.vim" },
}
