return {
  "nvim-treesitter/nvim-treesitter",
  enabled = true,
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = "all",
      ignore_install = { "ipkg" },
      highlight = {
        enable = false,
        disable = {},
      },
    })
  end,
}
