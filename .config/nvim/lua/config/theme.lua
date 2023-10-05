local db = require("dashboard")
local onemono = require("one_monokai")
local bufferline = require("bufferline")
local ascii = require('config.ascii')
local tscope = require('config.telescope')

require('lualine').setup {
  options = {
    theme = 'molokai' 
  }
}


db.setup({
  theme = 'doom',
  config = {
    header = ascii.cm3,
    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Restore Session           ',
        desc_hl = 'String',
        key_hl = 'Number',
        action = function() require("persistence").load({last=true}) end, 
      },
      {
        icon = '',
        desc = 'Configure nvim',
        action = function() tscope.tsfindfiles('/home/neo/.config/nvim/') end,
      },
      {
        icon = ' ',
        desc = 'Configure zsh',
        action = function() tscope.tsfindfiles('/home/neo/.config/zsh/') end,
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
