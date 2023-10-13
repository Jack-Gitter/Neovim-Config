local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use 'mhartington/formatter.nvim'
  use 'karb94/neoscroll.nvim'
  use 'ggandor/lightspeed.nvim'
  use 'jiangmiao/auto-pairs'
  use 'voldikss/vim-floaterm'
  use {'ggandor/leap.nvim', requires = {{'tpope/vim-repeat'}}}
  use {
      "microsoft/vscode-js-debug",
      opt = true,
      run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  }
  use {
    'williamboman/mason.nvim',
    'mfussenegger/nvim-dap',
    "jay-babu/mason-nvim-dap.nvim",
    'mfussenegger/nvim-dap-python',
    "mxsdev/nvim-dap-vscode-js",
    'williamboman/mason-lspconfig.nvim',
    'mfussenegger/nvim-lint',
    "rshkarin/mason-nvim-lint",
    'neovim/nvim-lspconfig'
  }
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'numToStr/Comment.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.3',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'theHamsta/nvim-dap-virtual-text'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
