-- Keymaps
local map = vim.keymap.set

-- Clear search highlighting
map("n", "<Space>x", ":let @/=''<CR>", { desc = "Clear search" })

-- Split navigation (handled by vim-tmux-navigator plugin)
map("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to above split" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

-- System clipboard
map("v", "<Leader>y", '"+y', { desc = "Yank to clipboard" })
map("v", "<Leader>d", '"+d', { desc = "Delete to clipboard" })
map("n", "<Leader>p", '"+p', { desc = "Paste from clipboard" })
map("n", "<Leader>P", '"+P', { desc = "Paste before from clipboard" })
map("v", "<Leader>p", '"+p', { desc = "Paste from clipboard" })
map("v", "<Leader>P", '"+P', { desc = "Paste before from clipboard" })

-- Keep cursor position after yank
map("v", "y", "ygv<Esc>", { desc = "Yank and keep cursor" })

-- Function keys
map("n", "<F8>", ":AerialToggle!<CR>", { desc = "Toggle Aerial" })
map("n", "<F9>", ":AerialNavToggle<CR>", { desc = "Toggle Aerial Nav" })
map("n", "<F10>", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

-- Redraw screen
map("n", "<Leader>r", ":redraw!<CR>", { desc = "Redraw screen" })

-- New tab
map("n", "<Leader>t", ":tabnew<CR>", { desc = "New tab" })

-- FZF
map("n", "<tab>", ":Buffers<CR>", { desc = "FZF Buffers" })
map("n", "<C-p>", ":Files<CR>", { desc = "FZF Files" })
map("n", "g<C-p>", ":GFiles<CR>", { desc = "FZF Git Files" })
map("n", "<s-tab>", ":Rg<CR>", { desc = "FZF Ripgrep" })

-- Keep selection after indent
map("v", ">", "><CR>gv", { desc = "Indent and keep selection" })
map("v", "<", "<<CR>gv", { desc = "Outdent and keep selection" })

-- Git
map("n", "<leader>gb", ":Git blame<CR>", { desc = "Git blame" })
