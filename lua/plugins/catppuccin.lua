return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "mocha",
    transparent_background = true,
  },
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true,
      show_end_of_buffer = false,
      term_colors = false,
      no_italic = false,
      no_bold = false,
      no_underline = false,
      integrations = {
        cmp = true,
        diffview = true,
        nvimtree = true,
        gitsigns = true,
        treesitter = true,
      },
    })

    vim.cmd.colorscheme("catppuccin")
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
}
