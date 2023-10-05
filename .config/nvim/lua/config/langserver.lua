local mason = require('mason')
local masonlspconfig = require('mason-lspconfig')
local lspconfig = require('lspconfig')
local coq = require('coq')

mason.setup()
masonlspconfig.setup()

lspconfig.pyright.setup(coq.lsp_ensure_capabilities())
lspconfig.tsserver.setup(coq.lsp_ensure_capabilities())
lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities())

vim.api.nvim_create_autocmd({'VimEnter',}, {
	command = "COQnow -s"
})
