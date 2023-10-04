vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

require('plugins')
require('treesitter')
require("langserver")
require("coc")
require('basic')
require("ngit")
require("theme")
require("discord")

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
