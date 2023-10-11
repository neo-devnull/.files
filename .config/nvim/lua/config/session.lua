local export = {}
local session = require('persistence')

session.setup({
	dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/")
})

export.restore_last = function() session.load({ last = true }) end
export.restore_here = function() session.load() end
export.session = session
return export
