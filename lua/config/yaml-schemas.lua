local kubernetes =
  "https://raw.githubusercontent.com/yannh/kubernetes-json-schema/refs/heads/master/v1.32.2-standalone-strict/all.json"
local flux2 = "https://raw.githubusercontent.com/fluxcd-community/flux2-schemas/refs/heads/main/all.json"
local gitlab = "https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"
local taskfile = "https://taskfile.dev/schema.json"
local podmonitor =
  "https://raw.githubusercontent.com/datreeio/CRDs-catalog/refs/heads/main/monitoring.coreos.com/podmonitor_v1.json"
local servicemonitor =
  "https://raw.githubusercontent.com/datreeio/CRDs-catalog/refs/heads/main/monitoring.coreos.com/servicemonitor_v1.json"
local prometheus =
  "https://raw.githubusercontent.com/datreeio/CRDs-catalog/refs/heads/main/monitoring.coreos.com/prometheus_v1.json"
local ingress =
  "https://raw.githubusercontent.com/yannh/kubernetes-json-schema/refs/heads/master/v1.30.1/ingress-networking-v1.json"

return {
  [kubernetes] = {
    "*.{deployment,service,secret,configmap,namespace}.yaml",
    "*.{volume,persistentvolume,persistentvolumeclaim}.yaml",
  },
  ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/refs/heads/master/v1.32.2-standalone-strict/cronjob-batch-v1.json"] = {
    "*.cronjob.yaml",
  },
  [flux2] = {
    "*.{alert,provider,receiver,helmrelease,helmrepository,gitrepository}.yaml",
    "gotk-sync.yaml",
    "gotk-*.yaml",
  },
  [gitlab] = {
    "ci/*.{yaml,yml}",
    ".gitlab/**/*.{yaml,yml}",
    ".gitlab-ci.{yaml,yml}",
  },
  [taskfile] = {
    "**/Taskfile*.{yaml,yml}",
    "taskfiles/**/*.{yaml,yml}",
  },
  [podmonitor] = {
    "*podmonitor*.{yaml,yml}",
  },
  [servicemonitor] = {
    "*servicemonitor*.{yaml,yml}",
  },
  [prometheus] = {
    "*prometheus.{yaml,yml}",
  },
  [ingress] = {
    "*ingress.{yaml,yml}",
  },
}
