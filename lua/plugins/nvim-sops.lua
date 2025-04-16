return {
  "lucidph3nx/nvim-sops",
  config = function()
    require("which-key").add({
      { "<leader>s", group = "🔑Sops" },
    })
    -- nvim-sops
    vim.keymap.set("n", "<leader>se", vim.cmd.SopsEncrypt, { desc = "🔑[S]ops [E]ncrypt" })
    vim.keymap.set("n", "<leader>sd", vim.cmd.SopsDecrypt, { desc = "🔑[S]ops [D]ecrypt" })
  end,
}
