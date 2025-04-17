return {
  cmd = { "yaml-language-server", "--stdio" },
  filetypes = { "yaml" },
  root_markers = { ".git", ".yamlfmt" },
  settings = {
    yaml = {
      schemaDownload = { enable = true },
      validate = true,
      hover = true,
      trace = { server = "debug" },
      schemas = {
        ["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = {
          "ci/*.{yaml,yml}",
          ".gitlab/**/*.{yaml,yml}",
          ".gitlab-ci.{yaml,yml}",
        },
        ["https://taskfile.dev/schema.json"] = {
          "**/Taskfile*.{yaml,yml}",
          "taskfiles/**/*.{yaml,yml}",
        },
      },
    },
  },
}
