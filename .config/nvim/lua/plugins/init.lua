return {
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ 'neovim/nvim-lspconfig'},
	{ 'ms-jpq/coq_nvim' },
	{ 'ms-jpq/coq.artifacts' },
	{
		'ms-jpq/coq.thirdparty',
		branch = '3p'
	},
	{ 'nanozuki/tabby.nvim' , enabled = false},
	{ 'nvim-treesitter/nvim-treesitter' },

    { '2KAbhishek/nerdy.nvim' },
	{ 'glepnir/dashboard-nvim' },
	{ 'numToStr/Comment.nvim' },
	{ 'kylechui/nvim-surround' },
	{ 'windwp/nvim-autopairs' },
	{ "MunifTanjim/nui.nvim" },
	{ "nvim-lua/plenary.nvim" },
	{ "nacro90/numb.nvim" },
	{ 
        "nvim-telescope/telescope.nvim",
        dependencies = "tsakirist/telescope-lazy.nvim"
    },
	{ "sindrets/diffview.nvim" },
	
	-- utility
	{ "rktjmp/paperplanes.nvim" },

	-- color schemes
	{ "Shatur/neovim-ayu" },
	{ "ellisonleao/gruvbox.nvim" },
	{ "folke/tokyonight.nvim" },
	{ "UtkarshVerma/molokai.nvim" },
	{ "cpea2506/one_monokai.nvim" },
	{ "sonph/onehalf" },
	
	-- eye-candy
	{ "nvim-tree-web-devicons" },
	{ "SmiteshP/nvim-navic" },
	{ "utilyre/barbecue.nvim" },
	{ "nvim-lualine/lualine.nvim" },
    { 
        "akinsho/bufferline.nvim",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
	{ "yorickpeterse/nvim-window" },
	-- discord presence
	{ "andweeb/presence.nvim" },
	-- session manager
	{ "folke/persistence.nvim" }
}
