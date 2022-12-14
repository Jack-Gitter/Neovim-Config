return require('packer').startup(function()
	-- packer managing itself
	use 'wbthomason/packer.nvim'
	-- color theme for nvim
	use 'gruvbox-community/gruvbox'
	use 'savq/melange'
	use 'Mofiqul/dracula.nvim'
	use 'aktersnurra/no-clown-fiesta.nvim'
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
	-- git plugin 
--	use {'tanvirtin/vgit.nvim',requires = {'nvim-lua/plenary.nvim'}}
	-- telescope plugin
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0',
	requires = { {'nvim-lua/plenary.nvim'}}}
	use 'psliwka/vim-smoothie'
	use 'kdheepak/lazygit.nvim'
        use 'ggandor/lightspeed.nvim'	
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt=true}
	}
end)

