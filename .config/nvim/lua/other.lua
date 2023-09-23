local chatgpt = require('chatgpt')
local paperplanes = require('paperplanes')

require('numb').setup()
require('nvim-surround').setup({})
require("nvim-autopairs").setup({})
require('fzf-lua')

paperplanes.setup({
	register = "+",
	provider = "0x0.st",
	provider_options = {},
	notifier = vim.notify or print
})
chatgpt.setup({})

vim.keymap.set("n", "<c-F>",
"<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
