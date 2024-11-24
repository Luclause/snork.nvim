return {
  { -- Neovim Debug Adapter Protocol (DAP)
    'mfussenegger/nvim-dap',
    config = function()
      vim.keymap.set('n', '<leader>db', '<cmd>DapToggleBreakpoint<CR>', { desc = '[D]ebug Toggle [B]reakpoint' })
      vim.keymap.set('n', '<leader>ds', '<cmd>DapStepOver<CR>', { desc = '[D]ebug Step Over' })
      vim.keymap.set('n', '<leader>di', '<cmd>DapStepInto<CR>', { desc = '[D]ebug Step Into' })
      vim.keymap.set('n', '<leader>do', '<cmd>DapStepOut<CR>', { desc = '[D]ebug Step Out' })
      vim.keymap.set('n', '<leader>dc', '<cmd>DapContinue<CR>', { desc = '[D]ebug Continue' })
    end,
  },
  { -- Mason Neovim DAP
    'jay-babu/mason-nvim-dap.nvim',
    dependencies = {
      'williamboman/mason.nvim',
      'mfussenegger/nvim-dap',
    },
    config = function()
      require('mason-nvim-dap').setup {
        ensure_installed = {
          'python',
        },
      }
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
    config = function()
      local dap = require 'dap'
      local dapui = require 'dapui'
      dapui.setup()

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
  },
  { -- Python DAP
    'mfussenegger/nvim-dap-python',
    ft = 'python',
    dependencies = {
      'mfussenegger/nvim-dap',
      'rcarriga/nvim-dap-ui',
    },
    config = function()
      -- local path = '~/.local/share/nvim/mason/packages/debugpy/venv/bin/python'
      require('dap-python').setup 'python'
      -- vim.keymap.set('n', '<leader>dpr', '<cmd>:lua ')
    end,
  },
}
