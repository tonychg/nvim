return {
  "stevearc/conform.nvim",
  opts = function()
    require("conform").formatters.stylua = {
      prepend_args = {
        "--indent-type",
        "Spaces",
        "--indent-width",
        "2",
      },
    }
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        rust = { "rustfmt", lsp_format = "fallback" },
        nix = { "alejandra" },
        yaml = { "yamlfmt" },
        go = { "gofmt" },
      },
      format_after_save = {
        lsp_format = "fallback",
        timeout_ms = 500,
      },
    })
  end,
  config = function()
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function(args)
        require("conform").format({ bufnr = args.buf })
      end,
    })
  end,
}
