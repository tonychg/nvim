return {
  cmd = { "gopls" },
  root_markers = { "go.mod", ".git" },
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
}
