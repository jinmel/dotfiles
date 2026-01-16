-- Treesitter plugins
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local ts = require("nvim-treesitter")
      ts.setup({
        ensure_installed = { "python", "svelte", "typescript", "javascript", "rust", "go", "lua", "vim", "vimdoc" },
      })
      -- Enable treesitter highlighting
      vim.treesitter.language.register("python", "python")
    end,
  },

  -- vim-go
  {
    "fatih/vim-go",
    build = ":GoUpdateBinaries",
    config = function()
      vim.g.go_code_completion_enabled = 0
      vim.g.go_fmt_command = "gofmt"
    end,
  },

  -- Circom syntax
  { "iden3/vim-circom-syntax" },
}
