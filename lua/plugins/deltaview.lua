-- Inline git diff viewer powered by delta
return {
  'kokusenz/deltaview.nvim',
  dependencies = {
    'kokusenz/delta.lua',
  },
  cmd = {
    'DeltaView',
    'DeltaMenu',
    'Delta',
  },
  keys = {
    { '<leader>Dl', desc = 'Deltaview: Inline diff (current file)' },
    { '<leader>Dm', desc = 'Deltaview: Modified files picker' },
    { '<leader>Da', desc = 'Deltaview: Diff with context' },
  },
  config = function()
    require('deltaview').setup {
      use_nerdfonts = true,
      show_verbose_nav = false,
      quick_select_view = 'hsplit',
      fzf_threshold = 0,
      line_numbers = false,
      fzf_picker = nil,
    }
  end,
}
