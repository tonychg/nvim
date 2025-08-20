vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, { desc = "Open diagnostic" })
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, { desc = "Set location list" })

vim.keymap.set("n", "<space>t&", function()
  vim.cmd("tabn 1")
end, { desc = "Go to Tab 1" })
vim.keymap.set("n", "<space>té", function()
  vim.cmd("tabn 2")
end, { desc = "Go to Tab 2" })
vim.keymap.set("n", '<space>t"', function()
  vim.cmd("tabn 3")
end, { desc = "Go to Tab 3" })
vim.keymap.set("n", "<space>t'", function()
  vim.cmd("tabn 4")
end, { desc = "Go to Tab 4" })
vim.keymap.set("n", "<space>tn", function()
  vim.cmd("tabnew")
end, { desc = "New tab" })
vim.keymap.set("n", "<space>tc", function()
  vim.cmd("tabclose")
end, { desc = "Close tab" })

vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")

vim.keymap.set("ca", "G", "vert G")
vim.keymap.set("ca", "h", "vert h")
vim.keymap.set("ca", "help", "vert help")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>cp", ":let @+ = expand('%')<CR>", { desc = "Copy current file path", silent = true })
vim.keymap.set("n", "<leader>dl", function()
  vim.lsp.enable(vim.bo.filetype, false)
end, { desc = "Copy current file path", silent = true })

require("which-key").add({
  { "<leader>g", group = "Git" },
})
require("which-key").add({
  { "<leader>gp", group = "Git push" },
})
require("which-key").add({
  { "<leader>gc", group = "Git commit" },
})
require("which-key").add({
  { "<leader>gf", group = "Git fetch" },
})

vim.keymap.set("n", "<leader>gpp", "<cmd>Git push<cr>", { desc = "Git push" })
vim.keymap.set("n", "<leader>gpf", "<cmd>Git push --force-with-lease<cr>", { desc = "Git push force" })
vim.keymap.set("n", "<leader>gpm", "<cmd>Git push -o merge_request.create<cr>", { desc = "Git push & Create MR" })
vim.keymap.set("n", "<leader>gaa", "<cmd>Git add .<cr>", { desc = "Git add" })
vim.keymap.set("n", "<leader>gap", "<cmd>Git add -p<cr>", { desc = "Git add" })
vim.keymap.set("n", "<leader>gcc", "<cmd>vertical Git commit<cr>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>gca", "<cmd>vertical Git commit --amend<cr>", { desc = "Git commit amend" })
vim.keymap.set("n", "<leader>gll", "<cmd>Git pull<cr>", { desc = "Git pull" })
vim.keymap.set("n", "<leader>glp", "<cmd>vertical Git log -p %<cr>", { desc = "Git log patch current file" })
vim.keymap.set("n", "<leader>gfa", "<cmd>Git fetch --all --prune<cr>", { desc = "Git fetch all" })

vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set(
  "n",
  "<leader>xX",
  "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
  { desc = "Buffer Diagnostics (Trouble)" }
)
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
vim.keymap.set(
  "n",
  "<leader>cl",
  "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
  { desc = "LSP Definitions / references / ... (Trouble)" }
)
vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
