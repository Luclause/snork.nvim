return {
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-telescope/telescope.nvim',
    'mfussenegger/nvim-dap-python',
  },
  opts = {
    name = {
      'venv',
      '.venv',
    },
  },
  keys = {
    { '<leader>ps', '<cmd>VenvSelect<CR>', desc = 'Python: Select venv' },
    { '<leader>pp', '<cmd>VenvSelectCached<CR>', desc = 'Python: Quick venv' },
  },
}
