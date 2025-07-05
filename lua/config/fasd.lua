-- Fasd functions
local function go(pattern)
  local match = vim.fn.system("zoxide query " .. pattern)
  vim.cmd("lcd " .. match)
end

local function go_current()
  vim.cmd("lcd %:p:h")
end

-- Custom commands
vim.api.nvim_create_user_command("Z", function(opts)
  go(opts.args)
end, { nargs = 1 })
vim.api.nvim_create_user_command("Gc", go_current, {})
