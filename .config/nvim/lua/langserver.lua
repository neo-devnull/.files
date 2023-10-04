require("mason").setup()
require("mason-lspconfig").setup()
local lspconfig = require('lspconfig')
require'lspsaga'.setup{}

lspconfig.pyright.setup{}
lspconfig.eslint.setup{}

