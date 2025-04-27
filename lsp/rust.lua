return {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_markers = { ".git", "rustfmt.toml", "rustoolchain.toml" },
  settings = {
    ["rust-analyzer"] = {
      imports = {
        granularity = {
          group = "item",
        },
      },
    },
  },
}
