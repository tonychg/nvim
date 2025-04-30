return {
  cmd = { "typos-lsp" },
  filetypes = {
    "gitcommit",
    "jjdescription",
    "rust",
    "python",
    "go",
    "yaml",
    "helm",
    "terraform",
    "markdown",
  },
  root_markers = { ".jj", ".git" },
  settings = {
    init_options = {
      diagnosticSeverity = "Error",
    },
  },
}
