return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
      },
      sections = {
        lualine_x = { "encoding", "fileformat", "filetype" },
      },
    })
  end,
}
