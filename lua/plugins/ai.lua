return {
  'magicalne/nvim.ai',
  version = '*',
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('ai').setup {
      -- provider = 'anthropic',
      provider = 'gemini',
      gemini = {
        model = 'gemini-2.5-flash-preview-05-20',
      },
    }
  end,
}
