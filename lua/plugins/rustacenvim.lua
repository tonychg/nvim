return {
  "mrcjkb/rustaceanvim",
  version = "^6",
  lazy = false,
  enabled = false,
  config = function()
    vim.g.rustacenvim = {
      server = {
        cmd = { "rust-analyzer" },
      },
    }
  end,
}
