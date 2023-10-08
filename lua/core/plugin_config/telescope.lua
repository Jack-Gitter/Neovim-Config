local builtin = require('telescope.builtin')

vim.keymap.set('n', ';;', builtin.find_files, {})
vim.keymap.set('n', 'grep', builtin.live_grep, {})
