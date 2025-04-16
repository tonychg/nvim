local gitlab = "https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"
local taskfile = "https://taskfile.dev/schema.json"

return {
  [gitlab] = {
    "ci/*.{yaml,yml}",
    ".gitlab/**/*.{yaml,yml}",
    ".gitlab-ci.{yaml,yml}",
  },
  [taskfile] = {
    "**/Taskfile*.{yaml,yml}",
    "taskfiles/**/*.{yaml,yml}",
  },
}
