return {
  cmd = { "yaml-language-server", "--stdio" },
  filetypes = { "yaml" },
  root_markers = { ".git", ".yamlfmt" },
  settings = {
    yaml = {
      schemaDownload = { enable = true },
      validate = true,
      hover = true,
      trace = { server = "debug" },
    },
  },
}
