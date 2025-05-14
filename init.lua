require("config.lazy")

vim.cmd("syntax on")
vim.cmd("filetype on")
vim.cmd("filetype indent on")

vim.g.mapleader = " "
vim.opt.colorcolumn = "80"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
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
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.relativenumber = true
vim.opt.sessionoptions = vim.o.sessionoptions .. ",tabpages,globals"
vim.opt.ignorecase = true
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)
vim.opt.swapfile = false
vim.opt.laststatus = 3
vim.opt.re = 0
vim.opt.eol = true
-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Disable editorconfig
vim.g.editorconfig = false
vim.g.have_nerd_font = true

vim.opt.list = true
vim.opt.listchars = { trail = "~", nbsp = "␣", tab = "  " }
-- vim.lsp.set_log_level("off")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

require("config.lsp")

vim.lsp.enable("lua")
vim.lsp.enable("nix")
vim.lsp.enable("python")
vim.lsp.enable("typos")
vim.lsp.enable("yaml")
vim.lsp.enable("helm")
vim.lsp.enable("go")
vim.lsp.enable("rust")
vim.lsp.enable("terraform")
vim.lsp.enable("typescript")
vim.lsp.enable("c")

require("config.keymap")
require("config.fasd")
