vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    local opts = { buffer = ev.buf }
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    local bufnr = ev.buf
    local function desc(description)
      return { noremap = true, silent = true, buffer = bufnr, desc = description }
    end
    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    require("which-key").add({
      { "<leader>g", group = "Go to" }
    })
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = ev.buf, desc = "🧶 Go to declaration" })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = ev.buf, desc = "🧶 Go to definition" })
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = ev.buf, desc = "🧶 Go to implementation" })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = ev.buf, desc = "🧶 Go to references" })
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D',
      vim.lsp.buf.type_definition,
      { buffer = ev.buf, desc = "Type definition" }
    )
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, { buffer = ev.buf, desc = "LSP rename" })
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<space>F', function()
      require("conform").format({ bufnr = bufnr })
    end, { buffer = ev.buf, desc = "Format file" })
    if client.server_capabilities.inlayHintProvider then
      vim.keymap.set("n", "<space>h", function()
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
      end, desc("[lsp] toggle inlay hints"))
    end
    vim.diagnostic.config({ virtual_text = true })
  end,
})
