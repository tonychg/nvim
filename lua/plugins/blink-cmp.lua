return {
  "Saghen/blink.cmp",
  event = "VimEnter",
  enabled = false,
  dependencies = {
    -- "moyiz/blink-emoji.nvim",
    -- "Kaiser-Yang/blink-cmp-dictionary",
    -- "rafamadriz/friendly-snippets",
  },
  version = "1.*",
  opts = {
    keymap = { preset = "enter" },
    appearance = {
      nerd_font_variant = "mono",
    },
    completion = {
      -- By default, you may press `<c-space>` to show the documentation.
      -- Optionally, set `auto_show = true` to show the documentation after a delay.
      documentation = { auto_show = false, auto_show_delay_ms = 500 },
    },
    fuzzy = { implementation = "lua" },
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
