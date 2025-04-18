return {
  "mrcjkb/rustaceanvim",
  version = "^6",
  lazy = false,
  config = function()
    vim.g.rustacenvim = {
      server = {
        cmd = { "rust-analyzer" },
      },
    }
  end,
}
