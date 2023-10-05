vim.cmd('set nu')
vim.cmd('set expandtab')
vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set ruler')
vim.cmd('set noswapfile')
vim.cmd('filetype on')
vim.cmd('filetype plugin on')
vim.cmd('filetype indent on')
vim.cmd('syntax on')

local comment = require('Comment')
local session = require('persistence')
local numb = require('numb')
local nvimsrnd = require('nvim-surround')
local nvimpairs = require('nvim-autopairs')
local paperplanes = require('paperplanes')

-- Surround plugin usage
--     Old text                    Command         New text
-- --------------------------------------------------------------------------------
--     surr*ound_words             ysiw)           (surround_words)
--     *make strings               ys$"            "make strings"
--     [delete ar*ound me!]        ds]             delete around me!
--     remove <b>HTML t*ags</b>    dst             remove HTML tags
--     'change quot*es'            cs'"            "change quotes"
--     <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
--     delete(functi*on calls)     dsf             function calls

comment.setup({
	toggler = {
		line = 'gcc',
		block = 'gbc'
	},
	extra = {
		above = 'gc0',
		below = 'gco',
		eol = 'gcA'
	}
})

paperplanes.setup({
	register="+",
	provider="0x0.st",
	provider_options={},
	notifier=print,
})
numb.setup()
nvimsrnd.setup({})
nvimpairs.setup({})
comment.setup()
session.setup({
	dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/")
})

-- restore the session for the current directory
vim.api.nvim_set_keymap("n", "<c-T>", [[<cmd>lua require("persistence").load()<cr>]], {})

-- restore the last session
vim.api.nvim_set_keymap("n", "<c-R>", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- stop Persistence => session won't be saved on exit
vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {})

-- vim.keymap.set("n", "<c-F>",
-- "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
--
