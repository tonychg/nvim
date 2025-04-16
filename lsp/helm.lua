return {
  cmd = { "helm_ls", "serve" },
  root_markers = { "values.yaml", "Chart.yaml" },
  settings = {
    ['helm-ls'] = {
      yamlls = {
        enabled = true,
        enabledForFilesGlob = "*.{yaml,yml}",
        diagnosticsLimit = 50,
        showDiagnosticsDirectly = false,
        config = {
          completion = true,
          hover = true,
          schemas = require("config.yaml-schemas")
        }
      }
    }
  }
}
