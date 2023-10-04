local mason = require('mason')
local masonlspconfig = require('mason-lspconfig')
local lspconfig = require('lspconfig')

-- auto start coq
vim.g.coq_settings = {
	['auto_start'] = true,
}

local coq = require('coq')
local lspsaga= require('lspsaga')

mason.setup()
masonlspconfig.setup()
lspconfig.pyright.setup(coq.lsp_ensure_capabilities())
lspconfig.tsserver.setup(coq.lsp_ensure_capabilities())
