require('lazy').setup({

  { import = 'plugins/core' },

  { import = 'plugins/util' },

  { import = 'plugins/lsp' },

  { import = 'plugins/themes' },

  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
  {
    checker = {
      enabled = true,
      notify = false,
    },
    change_detection = {
      notify = false,
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
