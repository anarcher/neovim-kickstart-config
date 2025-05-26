return {
  'olimorris/codecompanion.nvim',
  opts = {},
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'ravitemer/codecompanion-history.nvim',
  },
  config = function()
    require('codecompanion').setup {
      adapters = {
        gemini = function()
          return require('codecompanion.adapters').extend('gemini', {
            env = {
              api_key = 'GEMINI_API_KEY',
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = 'gemini',
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
          adapter = 'gemini',
        },
        cmd = {
          adapter = 'gemini',
        },
      },
      extensions = {
        history = {
          enabled = true,
        },
      },
    }
  end,
}
