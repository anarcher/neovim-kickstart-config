-- AI CLI integration (Claude, Codex, Gemini, ...) inside Neovim.
-- NES (Copilot LSP next edit suggestions) is intentionally not configured:
-- it requires a GitHub Copilot subscription and copilot-language-server.
return {
  'folke/sidekick.nvim',
  opts = {
    nes = { enabled = false },
    cli = {
      -- run each CLI inside a detached tmux session so conversations
      -- survive a Neovim restart; `terminal` keeps the tmux pane in the
      -- Neovim float instead of stealing a real tmux window/split
      mux = {
        backend = 'tmux',
        enabled = true,
        create = 'terminal',
      },
    },
  },
  keys = {
    -- session
    {
      '<leader>aa',
      function()
        require('sidekick.cli').toggle()
      end,
      desc = 'Sidekick toggle CLI',
    },
    {
      '<leader>ac',
      function()
        require('sidekick.cli').toggle { name = 'claude', focus = true }
      end,
      desc = 'Sidekick Claude',
    },
    {
      '<leader>ax',
      function()
        require('sidekick.cli').toggle { name = 'codex', focus = true }
      end,
      desc = 'Sidekick Codex',
    },
    {
      '<leader>as',
      function()
        require('sidekick.cli').select { filter = { installed = true } }
      end,
      desc = 'Sidekick select CLI',
    },
    {
      '<leader>ad',
      function()
        require('sidekick.cli').close()
      end,
      desc = 'Sidekick detach session',
    },
    -- focus works from normal, terminal, insert and visual mode
    {
      '<c-.>',
      function()
        require('sidekick.cli').focus()
      end,
      mode = { 'n', 't', 'i', 'x' },
      desc = 'Sidekick focus',
    },
    -- send context
    {
      '<leader>at',
      function()
        require('sidekick.cli').send { msg = '{this}' }
      end,
      mode = { 'n', 'x' },
      desc = 'Sidekick send this',
    },
    {
      '<leader>af',
      function()
        require('sidekick.cli').send { msg = '{file}' }
      end,
      desc = 'Sidekick send file',
    },
    {
      '<leader>av',
      function()
        require('sidekick.cli').send { msg = '{selection}' }
      end,
      mode = 'x',
      desc = 'Sidekick send selection',
    },
    {
      '<leader>ap',
      function()
        require('sidekick.cli').prompt()
      end,
      mode = { 'n', 'x' },
      desc = 'Sidekick prompt picker',
    },
  },
}
