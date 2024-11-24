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
    { '<leader>pv', '<cmd>VenvSelect<CR>' },
    { '<leader>pc', '<cmd>VenvSelectCached<CR>' },
  },
}
