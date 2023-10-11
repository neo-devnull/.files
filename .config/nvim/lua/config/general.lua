local comment = require("Comment")
local numb = require("numb")
local nvimsrnd = require("nvim-surround")
local nvimpairs = require("nvim-autopairs")
local paperplanes = require("paperplanes")
local toggleterm = require("toggleterm")
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

toggleterm.setup({})
comment.setup({
	toggler = {
		line = "gcc",
		block = "gbc",
	},
	extra = {
		above = "gc0",
		below = "gco",
		eol = "gcA",
	},
})

paperplanes.setup({
	register = "+",
	provider = "0x0.st",
	provider_options = {},
	notifier = print,
})

numb.setup()
-- nvimsrnd.setup({})
nvimpairs.setup({})
