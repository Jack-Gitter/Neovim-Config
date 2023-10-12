local dap = require('dap')
require('neodev').setup()
require('mason').setup()
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

require('mason-nvim-dap').setup({
    ensure_installed = { "python", "delve" },
    automatic_installation = true
})

require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
  ...
})

local dap = require('dap')
dap.adapters.python = function(cb, config)
  if config.request == 'attach' then
    ---@diagnostic disable-next-line: undefined-field
    local port = (config.connect or config).port
    ---@diagnostic disable-next-line: undefined-field
    local host = (config.connect or config).host or '127.0.0.1'
    cb({
      type = 'server',
      port = assert(port, '`connect.port` is required for a python `attach` configuration'),
      host = host,
      options = {
        source_filetype = 'python',
      },
    })
  else
    cb({
      type = 'executable',
      command = '/Users/jackgitter/.local/share/nvim/mason/bin/debugpy',
      args = { '-m', 'debugpy.adapter' },
      options = {
        source_filetype = 'python',
      },
    })
  end
end

dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = 'launch';
    name = "Launch file";
  }
}

--[[dap.adapters.python = {
    --
    type='executable',
    command = '/Users/jackgitter/.local/share/nvim/mason/bin/debugpy',
    name = 'debugpy'
}

dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
  },
}--]]
