return {
  'olimorris/codecompanion.nvim',
  -- v18.0.0 breaking change: 'strategies' renamed to 'interactions'
  tag = 'v18.6.0',
  opts = {},
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'ravitemer/codecompanion-history.nvim',
  },
  config = function()
    local helpers = require 'codecompanion.adapters.acp.helpers'

    require('codecompanion').setup {
      adapters = {
        acp = {
          pi = {
            name = 'pi',
            formatted_name = 'Pi',
            type = 'acp',
            roles = {
              llm = 'assistant',
              user = 'user',
            },
            opts = {
              vision = true,
            },
            commands = {
              default = { 'npx', '-y', 'pi-acp' },
            },
            defaults = {
              mcpServers = {},
              timeout = 20000,
            },
            parameters = {
              protocolVersion = 1,
              clientCapabilities = {
                fs = { readTextFile = true, writeTextFile = true },
              },
              clientInfo = {
                name = 'CodeCompanion.nvim',
                version = '1.0.0',
              },
            },
            handlers = {
              setup = function(self)
                return true
              end,
              form_messages = function(self, messages, capabilities)
                return helpers.form_messages(self, messages, capabilities)
              end,
              on_exit = function(self, code) end,
            },
          },
        },
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
          adapter = 'pi',
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
          adapter = 'pi',
        },
        cmd = {
          adapter = 'pi',
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
