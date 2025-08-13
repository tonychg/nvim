return {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_markers = { "Cargo.toml", "rustfmt.toml", "rustoolchain.toml" },
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
