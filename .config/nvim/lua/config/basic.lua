vim.cmd('set nu')
vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set ruler')
vim.cmd('set noswapfile')
vim.cmd('filetype on')
vim.cmd('filetype plugin on')
vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')


require('Comment').setup()
--local chatgpt = require('chatgpt')
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
--chatgpt.setup({})

vim.keymap.set("n", "<c-F>",
"<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
