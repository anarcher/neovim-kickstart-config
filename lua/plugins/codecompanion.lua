return {
  'olimorris/codecompanion.nvim',
  -- Upgraded to v18.2.1 for codecompanion-history.nvim compatibility
  -- v18.0.0 breaking change: 'strategies' renamed to 'interactions'
  tag = 'v18.2.1',
  opts = {},
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'ravitemer/codecompanion-history.nvim',
  },
  config = function()
    require('codecompanion').setup {
      adapters = {
        http = {
          gemini = function()
            return require('codecompanion.adapters').extend('gemini', {
              env = {
                api_key = 'GEMINI_API_KEY',
              },
            })
          end,
        },
      },
      interactions = {
        chat = {
          adapter = 'claude_code',
          keymaps = {
            send = {
              modes = {
                n = '<C-s>',
                i = '<C-s>',
              },
            },
            close = {
              modes = {
                n = '<C-q>',
                i = '<C-q>',
              },
            },
          },
        },
        inline = {
          adapter = 'claude_code',
        },
        cmd = {
          adapter = 'claude_code',
        },
      },
      extensions = {
        history = {
          enabled = true,
          opts = {
            auto_generate_title = false,
          },
        },
      },
    }
  end,
}
