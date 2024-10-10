-- options.lua

vim.g.mapleader = ","

vim.opt.fileencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.wildmode = "longest:full,full"
vim.opt.wildoptions = {} -- empty table gives vim-like horizontal wildmenu
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.laststatus = 3

vim.opt.autochdir = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.wrap = true
vim.opt.whichwrap:append "<>[]hl" -- wrap to previous/next line when cursor reaches end/beginning of line

vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8

vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftround = true
vim.opt.shiftwidth = 4

vim.opt.termguicolors = true

vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.undolevels = 1024

vim.opt.fillchars = { eob = " " }

vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
