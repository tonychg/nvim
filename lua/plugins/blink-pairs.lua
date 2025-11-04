return {
  "saghen/blink.pairs",
  version = "*",
  enabled = true,
  dependencies = "saghen/blink.download",
  -- build = "cargo build --release",
  opts = {
    mappings = {
      enabled = true,
      pairs = {},
    },
    highlights = {
      enabled = true,
      groups = {
        "BlinkPairsOrange",
        "BlinkPairsPurple",
        "BlinkPairsBlue",
      },
      matchparen = {
        enabled = true,
        group = "MatchParen",
      },
    },
    debug = false,
  },
}
