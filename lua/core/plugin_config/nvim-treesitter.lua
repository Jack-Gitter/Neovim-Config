require 'nvim-treesitter.configs'.setup{

  ensure_installed = {'lua', 'vim', 'typescript', 'javascript'},
  sync_installed = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
