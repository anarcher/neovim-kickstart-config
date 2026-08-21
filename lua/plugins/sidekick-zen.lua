-- Zen mode that keeps the sidekick AI CLI (Claude Code, Codex, Gemini, ...) alongside
return {
  {
    -- AI CLI integration; sidekick-zen re-opens its terminal as a zen float
    'folke/sidekick.nvim',
    opts = {},
  },
  {
    'rashedInt32/sidekick-zen.nvim',
    dependencies = { 'folke/sidekick.nvim' },
    cmd = 'SidekickZen',
    keys = {
      {
        '<leader>z',
        function()
          require('sidekick-zen').toggle()
        end,
        desc = 'Toggle Zen Workspace',
      },
    },
    opts = {
      width = 0.8,
      keys = {
        code = '<C-h>',
        cli = '<C-l>',
        exit = 'q',
      },
    },
  },
}
