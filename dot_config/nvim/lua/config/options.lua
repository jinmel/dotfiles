-- General options
local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = false

-- Mouse
opt.mouse = "a"

-- Clipboard
opt.clipboard = "unnamedplus"

-- Indentation
opt.autoindent = true
opt.smartindent = true
opt.expandtab = true
opt.smarttab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4
opt.shiftround = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.linebreak = true
opt.colorcolumn = "120"
opt.cmdheight = 1
opt.linespace = 3

-- Behavior
opt.hidden = true
opt.swapfile = false
opt.backup = false
opt.undolevels = 1000
opt.history = 1000
opt.updatetime = 100
opt.backspace = "indent,eol,start"

-- Folding
opt.foldmethod = "marker"
opt.foldlevelstart = 1

-- Encoding
opt.encoding = "utf-8"
opt.fileencodings = "utf-8"

-- Wildignore
opt.wildignore = "*.pyc"

-- Regex engine
opt.regexpengine = 0

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Security
opt.secure = true
opt.modeline = false

-- Remove trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local save_cursor = vim.fn.getpos(".")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
  end,
})

-- Remember last cursor position
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})
