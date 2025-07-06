return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    vim.o.background = "light"
    vim.cmd.colorscheme("gruvbox")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
}
