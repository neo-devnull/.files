local conform = require("conform")
local prettier = require("conform.formatters.prettier")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { { "prettier" } },
	},
	format_on_save = {
		lsp_fallback = true,
		timeout_ms = 500,
	},
	notify_on_error = true,
})

prettier.args = function(ctx)
	local args = {
		"--stdin-filepath",
		"$FILENAME",
		"--tab-width",
		"4",
		"--single-quote",
	}
	return args
end
