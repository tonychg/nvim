return {
  dir = "/home/achiny/ghq/github.com/tonychg/nvim-k8s-lsp",
  config = function()
    require("nvim-k8s-lsp").setup({
      kubernetes_version = "v1.32.3",
      integrations = {
        lualine = true,
      },
    })
  end,
}
