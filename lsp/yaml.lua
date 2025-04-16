return {
  cmd = { "yaml-language-server", "--stdio" },
  filetypes = { "yaml" },
  settings = {
    yaml = {
      schemaDownload = { enable = true },
      schemas = require("config.yaml-schemas")
    }
  },
}
