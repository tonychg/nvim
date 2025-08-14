return {
  "tpope/vim-fugitive",
  config = function()
    require("which-key").add({
      { "<leader>g", group = "Git" },
    })
    require("which-key").add({
      { "<leader>gp", group = "Git push" },
    })
    require("which-key").add({
      { "<leader>gc", group = "Git commit" },
    })
    require("which-key").add({
      { "<leader>gf", group = "Git fetch" },
    })
  end,
  keys = {
    {
      "<leader>gpp",
      "<cmd>Git push<cr>",
      desc = "Git push",
    },
    {
      "<leader>gpf",
      "<cmd>Git push --force-with-lease<cr>",
      desc = "Git push force",
    },
    {
      "<leader>gpm",
      "<cmd>Git push -o merge_request.create<cr>",
      desc = "Git push & Create MR",
    },
    {
      "<leader>gaa",
      "<cmd>Git add .<cr>",
      desc = "Git add",
    },
    {
      "<leader>gap",
      "<cmd>Git add -p<cr>",
      desc = "Git add",
    },
    {
      "<leader>gcc",
      "<cmd>vertical Git commit<cr>",
      desc = "Git commit",
    },
    {
      "<leader>gca",
      "<cmd>vertical Git commit --amend<cr>",
      desc = "Git commit amend",
    },
    {
      "<leader>gll",
      "<cmd>Git pull<cr>",
      desc = "Git pull",
    },
    {
      "<leader>glp",
      "<cmd>vertical Git log -p %<cr>",
      desc = "Git log patch current file",
    },
    {
      "<leader>gfa",
      "<cmd>Git fetch --all --prune<cr>",
      desc = "Git fetch all",
    },
  },
}
