local mason = require('mason')
local masonlspconfig = require('mason-lspconfig')
local lspconfig = require('lspconfig')

local coq = require('coq')
local lspsaga= require('lspsaga')

mason.setup()
masonlspconfig.setup()
lspconfig.pyright.setup(coq.lsp_ensure_capabilities())
lspconfig.tsserver.setup(coq.lsp_ensure_capabilities())
-- start coq
vim.cmd(':COQnow')
