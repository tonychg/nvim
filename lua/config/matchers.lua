local base_url =
  "https://raw.githubusercontent.com/yannh/kubernetes-json-schema/refs/heads/master/v1.32.2-standalone-strict/%s-%s-%s.json"
local crd_base_url = "https://raw.githubusercontent.com/datreeio/CRDs-catalog/refs/heads/main/%s/%s_%s.json"
local kubernetes_resources = require("config.kubernetes")

local function table_contains(tbl, x)
  local found = false

  for _, v in pairs(tbl) do
    if v == x then
      found = true
    end
  end
  return found
end

local function get_current_buffer()
  return vim.api.nvim_buf_get_lines(0, 0, -1, false)
end

local function request(client, settings, bufnr)
  local status = client:notify("workspace/didChangeConfiguration", { settings = settings }, 50000, bufnr)
  vim.print(settings.yaml.schemas)
  vim.print(status)
  local bufuri = vim.uri_from_bufnr(bufnr)
  local err, handler = client:request_sync("yaml/get/jsonSchema", { bufuri }, 50000, bufnr)
  vim.print(err, handler)
end

local function parse_api_version(client, bufnr)
  local lines = get_current_buffer()
  local kind = nil
  local api_version = nil

  for _, line in ipairs(lines) do
    local _, a = vim.regex([[^kind: \a\+$]]):match_str(line)
    if a then
      kind = string.sub(line, 7, a)
    end
    local _, b = vim.regex([[^apiVersion: .*$]]):match_str(line)
    if b then
      api_version = string.sub(line, 13, b)
    end
  end

  if api_version and kind then
    local t = vim.split(api_version, "/", { plain = true })
    local group = t[1]
    local version = t[2]
    local url = string.format(crd_base_url, group, string.lower(kind), version)
    local is_builtin = table_contains(kubernetes_resources, kind)
    if is_builtin then
      url = string.format(base_url, string.lower(kind), group, version)
    end
    -- vim.cmd(string.format([[echom "kind=%s" "group=%s" "version=%s"]], kind, group, version))
    -- vim.cmd(string.format([[echom "url=%s is_builtin=%s"]], url, is_builtin))
    -- vim.cmd(string.format([[echom "path=%s"]], vim.fn.expand("%")))
    local override = client.settings
    local bufuri = vim.uri_from_bufnr(bufnr)
    local schemas = { [url] = { bufuri } }
    if override.yaml.schemas then
      schemas = vim.tbl_deep_extend("keep", override.yaml.schemas, { [url] = { bufuri } })
      for k, v in pairs(override.yaml.schemas) do
        if k == url then
          local files = v
          if not table_contains(files, bufuri) then
            table.insert(files, bufuri)
          end
          schemas[k] = files
        end
      end
    end
    override.yaml.schemas = schemas
    request(client, override, bufnr)
  end
end

return parse_api_version
