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
vim.g.c_syntax_for_h = 1

vim.cmd([[
highlight clear

" for cterm, 'black' might get overwritten by the terminal emulator, so we use
" 232 (#080808), which is close enough.

highlight! Normal guibg=#fbf1c7 guifg=#000000 ctermbg=230 ctermfg=232
highlight! NormalNC guibg=#fbf1c7 guifg=#000000 ctermbg=230 ctermfg=232
highlight! NormalFloat guibg=#fbf1c7 guifg=#000000 ctermbg=230 ctermfg=232
highlight! NonText guibg=bg guifg=#fbf1c7 ctermbg=bg ctermfg=230
highlight! StatusLine guibg=#aeeeee guifg=#000000 gui=NONE ctermbg=159 ctermfg=232 cterm=NONE
highlight! StatusLineNC guibg=#eaffff guifg=#000000 gui=NONE ctermbg=194 ctermfg=232 cterm=NONE
highlight! WildMenu guibg=#000000 guifg=#eaffff gui=NONE ctermbg=black ctermfg=159 cterm=NONE
highlight! VertSplit guibg=#fbf1c7 guifg=#000000 gui=NONE ctermbg=159 ctermfg=232 cterm=NONE
highlight! Folded guibg=#cccc7c guifg=fg gui=italic ctermbg=187 ctermfg=fg cterm=italic
highlight! FoldColumn guibg=#fcfcce guifg=fg ctermbg=229 ctermfg=fg
highlight! Conceal guibg=bg guifg=fg gui=NONE ctermbg=bg ctermfg=fg cterm=NONE
highlight! LineNr guibg=bg guifg=#505050 gui=italic ctermbg=bg ctermfg=239 cterm=italic
highlight! Visual guibg=fg guifg=bg ctermbg=fg ctermfg=bg
highlight! CursorLine guibg=#ffffca guifg=fg ctermbg=230 ctermfg=fg
highlight! Pmenu guibg=bg guifg=fg ctermbg=bg ctermfg=fg
highlight! PmenuSel guibg=fg guifg=bg ctermbg=fg ctermfg=bg

highlight! Statement guibg=bg guifg=fg gui=italic ctermbg=bg ctermfg=fg cterm=italic
highlight! Identifier guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! Type guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! PreProc guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! Constant guibg=bg guifg=#101010 gui=bold ctermbg=bg ctermfg=233 cterm=italic
highlight! Comment guibg=bg guifg=#303030 gui=italic ctermbg=bg ctermfg=236 cterm=italic
highlight! Special guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! SpecialKey guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! NonText guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! Directory guibg=bg guifg=fg gui=bold ctermbg=bg ctermfg=fg cterm=bold
highlight! link Title Directory
highlight! link MoreMsg Comment
highlight! link Question Comment

" vim
hi link vimFunction Identifier

let g:colors_name = "acme"
]])

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
