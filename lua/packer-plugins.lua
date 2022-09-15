return require('packer').startup(function()
	-- packer managing itself
	use 'wbthomason/packer.nvim'
	-- color theme for nvim
	use 'gruvbox-community/gruvbox'
	-- pairs parentheticals automatically
	use 'windwp/nvim-autopairs'
	-- auto completion plugins 
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip'
	use 'L3MON4D3/LuaSnip'
	-- lsp plugins
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
end) 
