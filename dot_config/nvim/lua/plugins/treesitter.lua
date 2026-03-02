-- Treesitter plugins
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = { "python", "typescript", "javascript", "rust", "go", "lua"},
      })
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          pcall(vim.treesitter.start)
        end,
      })
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
}
