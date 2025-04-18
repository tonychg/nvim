require("config.lazy")

vim.cmd("syntax on")
vim.cmd("filetype on")
vim.cmd("filetype indent on")

vim.g.mapleader = " "
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.exrc = true
vim.opt.secure = true
vim.opt.termguicolors = true
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.guicursor = ""
vim.opt.scrolloff = 0
vim.opt.signcolumn = "yes"
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.updatetime = 50
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.relativenumber = true
vim.opt.sessionoptions = vim.o.sessionoptions .. ",tabpages,globals"
vim.opt.ignorecase = true
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false
vim.opt.laststatus = 3
vim.opt.re = 0
vim.opt.eol = true

-- Disable editorconfig
vim.g.editorconfig = false
vim.g.have_nerd_font = true

vim.opt.list = true
vim.opt.listchars = { trail = "~", nbsp = "␣" }
-- vim.lsp.set_log_level("off")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("config.lsp")

vim.lsp.enable("luals")
vim.lsp.enable("python")
vim.lsp.enable("typos")
vim.lsp.enable("yaml")
vim.lsp.enable("helm")
vim.lsp.enable("gopls")

require("config.keymap")
