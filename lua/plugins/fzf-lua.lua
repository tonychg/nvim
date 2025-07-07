return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    files = {
      fd_opts = [[--color=never --type f --hidden --follow --exclude .git --exclude *.cur --exclude *.mp4 --exclude *.gif --exclude *.png --exclude *.jpg --exclude *.PNG --exclude *.mp3]],
    },
  },
  config = function()
    -- fzf
    require("which-key").add({
      { "<leader>f", group = "🔍Search" },
    })
    vim.keymap.set("n", "<leader>ff", require("fzf-lua").files, { silent = true, desc = "🔍Search files" })
    vim.keymap.set("n", "<leader>fr", function()
      require("fzf-lua").files({ cwd = "~/" })
    end, { silent = true, desc = "🔍Search files" })
    vim.keymap.set("n", "<leader>x", require("fzf-lua").quickfix, { silent = true, desc = "🔍Open quickfix" })
    vim.keymap.set("n", "<leader>fg", require("fzf-lua").live_grep, { silent = true, desc = "🔍Search live grep" })
    vim.keymap.set("n", "<leader>fb", require("fzf-lua").buffers, { silent = true, desc = "🔍Search buffers" })
    vim.keymap.set("n", "<leader>fa", function()
      require("fzf-lua").files({ cwd = "~/ghq" })
    end, { silent = true, desc = "🔍Search all git files" })
  end,
}
