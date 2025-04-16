return {
  "tonychg/nvim-k8s-lsp",
  config = function()
    require("nvim-k8s-lsp").setup({
      kubernetes_version = "v1.32.3",
    })
  end,
}
