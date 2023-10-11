-- commands and binds
local session = require("config.session")
local tscope = require("config.telescope")

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.backspace = "indent,eol,start"
vim.o.number = true
vim.o.ruler = true
vim.o.swapfile = false

-- alt + h
vim.keymap.set("n", "<A-h>", session.restore_here, {})
-- alt + l
vim.keymap.set("n", "<A-l>", session.restore_last, {})
-- ctrl + save save
vim.keymap.set("n", "<C-s>", "<cmd>:write<cr>", {})
-- alt + t toggle terminal
vim.keymap.set("n", "<C-t>", "<cmd>:ToggleTerm<cr>", {})

vim.keymap.set("n", "<c-F>", tscope.builtin.find_files, {})
vim.keymap.set("n", "<c-G>", tscope.builtin.git_files, {})
vim.keymap.set("n", "<c-B>", tscope.builtin.buffers, {})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
	command = "COQnow -s",
})

-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
-- 	pattern = { "*.lua" },
-- 	command = "silent! !stylua %:p",
-- })
--
-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
-- 	pattern = { "*.js" },
-- 	command = "silent! !prettier -w %:p",
-- })
