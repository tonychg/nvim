return {
  "Saghen/blink.cmp",
  event = "VimEnter",
  enabled = true,
  dependencies = {
    "rafamadriz/friendly-snippets",
  },
  version = "1.*",
  opts = {
    keymap = { preset = "enter" },
    appearance = {
      nerd_font_variant = "mono",
    },
    cmdline = { enabled = false },
    completion = {
      list = { selection = { preselect = true, auto_insert = true } },
      documentation = { auto_show = true, auto_show_delay_ms = 500 },
    },
    fuzzy = {
      implementation = "prefer_rust_with_warning",
      sorts = {
        "score", -- Primary sort: by fuzzy matching score
        "sort_text", -- Secondary sort: by sortText field if scores are equal
        "label", -- Tertiary sort: by label if still tied
      },
    },
    signature = { enabled = true },
    sources = {
      default = {
        "lsp",
        "path",
        "buffer",
        -- "snippets",
      },
    },
  },
}
