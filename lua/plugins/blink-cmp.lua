return {
  "Saghen/blink.cmp",
  dependencies = {
    "moyiz/blink-emoji.nvim",
    "Kaiser-Yang/blink-cmp-dictionary",
    "rafamadriz/friendly-snippets",
  },
  version = "*",
  event = "VeryLazy",
  opts_extend = { "sources.default" },
  opts = {
    keymap = { preset = "enter" },
    completion = {
      menu = {
        min_width = 1,
        draw = {
          columns = { { "label", "label_description", gap = 1 }, { "kind" } },
        },
      },
    },
    signature = { enabled = true },
    sources = {
      default = {
        "lsp",
        "path",
        "snippets",
        "buffer",
        "emoji",
        "dictionary",
      },
      providers = {
        emoji = {
          module = "blink-emoji",
          name = "Emoji",
          score_offset = 15, -- Tune by preference
          opts = { insert = true }, -- Insert emoji (default) or complete its name
          should_show_items = function()
            return vim.tbl_contains({ "gitcommit", "markdown" }, vim.o.filetype)
          end,
        },
        dictionary = {
          module = "blink-cmp-dictionary",
          name = "Dict",
          min_keyword_length = 3,
          max_items = 10,
          opts = {
            dictionary_files = function()
              if vim.bo.filetype == "markdown" or vim.bo.filetype == "gitcommit" then
                return {}
              end
              return {}
            end,
          },
        },
      },
    },
    cmdline = {
      enabled = false,
    },
  },
}
