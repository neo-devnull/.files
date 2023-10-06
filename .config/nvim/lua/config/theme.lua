local db = require("dashboard")
local onemono = require("one_monokai")
local bufferline = require("bufferline")
local ascii = require("config.ascii")
local tscope = require("config.telescope")

require("lualine").setup({
	options = {
		theme = "molokai",
	},
})

db.setup({
	theme = "doom",
	config = {
		header = ascii.cm3,
		center = {
			{
				icon = " ",
				icon_hl = "Title",
				desc = "Restore Session",
				action = function()
					require("persistence").load({ last = true })
				end,
			},
			{
				icon = " ",
				icon_hl = "Title",
				desc = "Configure nvim",
				action = function()
					tscope.tsfindfiles("/home/neo/.config/nvim/")
					vim.cmd("cd /home/neo/.config/nvim/")
				end,
			},
			{
				icon = " ",
				icon_hl = "Title",
				desc = "Configure zsh",
				action = function()
					tscope.tsfindfiles("/home/neo/.config/zsh/")
					vim.cmd("cd /home/neo/.config/zsh/")
				end,
			},
			{
				icon = " ",
				icon_hl = "Title",
				desc = "Manage dotfiles",
				action = function()
					tscope.tsmanagecfg()
				end,
			},
		},
	},
})

onemono.setup({
	transparent = false,
})
vim.cmd.colorscheme("molokai")
