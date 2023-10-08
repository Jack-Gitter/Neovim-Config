vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup()
require('nvim-web-devicons')

vim.keymap.set('n', 'tree', ':NvimTreeFindFileToggle<CR>')
