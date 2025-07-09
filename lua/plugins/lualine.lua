return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "simplecolors",
      },
      sections = {
        lualine_x = { "encoding", "fileformat", "filetype" },
      },
    })
  end,
}
