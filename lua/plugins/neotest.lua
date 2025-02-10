return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    { 'fredrikaverpil/neotest-golang', version = '*' },
    { 'rouge8/neotest-rust' },
    { 'lawrence-laz/neotest-zig' },
  },
  keys = {
    {
      '<leader>tt',
      function()
        require('neotest').run.run(vim.fn.expand '%')
      end,
      desc = 'Run File',
    },
    {
      '<leader>tT',
      function()
        require('neotest').run.run(vim.loop.cwd())
      end,
      desc = 'Run All Test Files',
    },
    {
      '<leader>tr',
      function()
        require('neotest').run.run()
      end,
      desc = 'Run Nearest',
    },
    {
      '<leader>ts',
      function()
        require('neotest').summary.toggle()
      end,
      desc = 'Toggle Summary',
    },
    {
      '<leader>to',
      function()
        require('neotest').output.open { enter = true, auto_close = true }
      end,
      desc = 'Show Output',
    },
    {
      '<leader>tO',
      function()
        require('neotest').output_panel.toggle()
      end,
      desc = 'Toggle Output Panel',
    },
    {
      '<leader>tS',
      function()
        require('neotest').run.stop()
      end,
      desc = 'Stop',
    },
  },
  config = function()
    -- neotest opts
    local neotest_golang_opts = {}
    local neotest_rust_opts = {}
    local neotest_zig_opts = {}

    require('neotest').setup {
      adapters = {
        require 'neotest-golang'(neotest_golang_opts),
        require 'neotest-rust'(neotest_rust_opts),
        require 'neotest-zig'(neotest_zig_opts),
      },
    }
  end,
}
