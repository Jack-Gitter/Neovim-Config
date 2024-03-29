require('mason').setup()
require ('mason-nvim-dap').setup({
    ensure_installed = {'python','stylua','jq', 'javascript', 'js'},
})
require('mason-lspconfig').setup({
  ensure_installed = {'lua_ls', 'tsserver'}
})

local on_attach = function(_, _)

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'ref', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup { on_attach = on_attach, capabilities = capabilities }
require('lspconfig').tsserver.setup { on_attach = on_attach, capabilities = capabilities }
