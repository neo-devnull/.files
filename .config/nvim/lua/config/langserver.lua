local mason = require("mason")
local masonlspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local coq = require("coq")

mason.setup()
masonlspconfig.setup()

lspconfig.pyright.setup(coq.lsp_ensure_capabilities())
lspconfig.tsserver.setup(coq.lsp_ensure_capabilities())
lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities({
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = { vim.env.VIMRUNTIME },
			},
		},
	},
}))
