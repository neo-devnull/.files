return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'ibhagwan/fzf-lua'

	use "williamboman/mason.nvim"
	use "williamboman/mason-lspconfig.nvim"
	use 'neovim/nvim-lspconfig'
	use 'nvimdev/lspsaga.nvim'
	
	use 'ms-jpq/coq_nvim'
	use 'ms-jpq/coq.artifacts'
	use {
		'ms-jpq/coq.thirdparty',
		branch = '3p'
	}

	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-treesitter/playground'
	use 'MDeiml/tree-sitter-markdown'
	use 'glepnir/dashboard-nvim'
	
	use 'numToStr/Comment.nvim'
	use 'kylechui/nvim-surround'
	use 'windwp/nvim-autopairs'

	use "MunifTanjim/nui.nvim"
	use "nvim-lua/plenary.nvim"
	use "nacro90/numb.nvim"
	use "nvim-telescope/telescope.nvim"

	use "rktjmp/paperplanes.nvim"
	use "sindrets/diffview.nvim"
	use 'Vimjas/vim-python-pep8-indent'
	
	use { "catppuccin/nvim", as = "catppuccin" }
	use "Shatur/neovim-ayu"
	use "ellisonleao/gruvbox.nvim"
	use "folke/tokyonight.nvim"
	use" nvim-tree-web-devicons"
	use "SmiteshP/nvim-navic"
	use "utilyre/barbecue.nvim"
	use "nvim-lualine/lualine.nvim"
	use "yorickpeterse/nvim-window"
	use "andweeb/presence.nvim"
end)
