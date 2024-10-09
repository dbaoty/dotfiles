-- keymaps.lua

-- escape key to clear search highlighting
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { silent = true })

-- buffer navigation/management
vim.keymap.set("n", "<M-l>", ":bn<CR>", { silent = true })
vim.keymap.set("n", "<M-h>", ":bp<CR>", { silent = true })
vim.keymap.set("n", "<M-d>", ":bdelete<CR>", { silent = true })
