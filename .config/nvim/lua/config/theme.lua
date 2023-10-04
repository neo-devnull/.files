local db = require("dashboard")
local onemono = require("one_monokai")

require('lualine').setup {
  options = {
    theme = 'molokai' 
  }
}

db.setup({
  theme = 'doom',
  config = {
    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'b',
        keymap = 'SPC f f',
        key_hl = 'Number',
        action = 'lua print(2)'
      },
      {
        icon = ' ',
        desc = 'Find Dotfiles',
        key = 'f',
        keymap = 'SPC f d',
        action = 'lua print(3)'
      },
    },
  }
})


onemono.setup({
	transparent = false
})
-- vim.cmd.colorscheme "gruvbox"
-- vim.cmd.colorscheme "one_monokai"
vim.cmd.colorscheme "molokai"
vim.o.showtabline = 2
