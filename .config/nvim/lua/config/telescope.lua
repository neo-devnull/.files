local export = {}
local telescope = require("telescope")
local tsbuiltin = require("telescope.builtin")

telescope.setup({
	defaults = {},
	pickers = {
		find_files = {
			theme = "dropdown",
		},
	},
	extensions = {
		lazy = {
			theme = "ivy",
		},
	},
})

export.tsfindfiles = function(cwd)
	tsbuiltin.find_files({ cwd = cwd })
end

export.tsmanagecfg = function()
	tsbuiltin.git_files({
		cwd = "/home/neo/.cfg/",
		git_command = { "git", "status" },
	})
end

export.telescope = telescope
export.builtin = tsbuiltin
return export
