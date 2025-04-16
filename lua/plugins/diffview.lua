return {
  "sindrets/diffview.nvim",
  config = function()
    vim.keymap.set('n', '<leader>m', '<cmd>DiffviewOpen<CR>', {
      desc = "Open Diffview"
    })
  end,
}
