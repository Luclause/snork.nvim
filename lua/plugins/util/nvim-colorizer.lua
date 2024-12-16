return {
  'NvChad/nvim-colorizer.lua',
  event = { 'BufReadPre', 'BufNewFile' },

  config = function()
    vim.o.termguicolors = true
    local colorizer = require 'colorizer'
  end,
}
