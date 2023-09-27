require('Comment').setup()
--local chatgpt = require('chatgpt')
local paperplanes = require('paperplanes')

require('numb').setup()
require('nvim-surround').setup({})
require("nvim-autopairs").setup({})
require('fzf-lua')
require("indent_blankline").setup {
	-- for example, context is off by default, use this to turn it on
	show_current_context = true,
	show_current_context_start = true,
}

paperplanes.setup({
	register = "+",		
	provider = "0x0.st",
	provider_options = {},
	notifier = vim.notify or print
})
--chatgpt.setup({})

vim.keymap.set("n", "<c-F>",
"<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
