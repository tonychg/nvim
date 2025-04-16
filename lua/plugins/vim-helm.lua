local function stop_yaml_lsp()
    vim.lsp.stop_client(vim.lsp.get_clients({ name = "yaml" }))
end

return {
  'towolf/vim-helm',
  config = function()
    vim.api.nvim_create_autocmd({"BufEnter", "BufRead", "BufNewFile"}, {
      pattern = {"templates/*.yaml", "templates/*.yml"},
      callback = function()
        if require("helm").isHelm() then
          stop_yaml_lsp()
        end
      end,
    })
    vim.api.nvim_create_autocmd("FileType", {
      pattern =  "helm" ,
      callback = stop_yaml_lsp,
    })
  end,
}
