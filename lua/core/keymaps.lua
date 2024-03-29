vim.opt.showcmd = true
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.updatetime = 50
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('n', 'git', ':FloatermNew LazyGit<CR>')
vim.keymap.set('n', 'winj', ':wincmd h<CR>')
vim.keymap.set('n', 'winl', ':wincmd l<CR>')
vim.keymap.set('n', 'tb', ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set('n', 'df', ":lua require'dap'.continue()<CR>")
