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
    { '<leader>gd', '<cmd>Delta<cr>', desc = 'Deltaview: Diff all modified (one buffer)' },
    { '<leader>gdv', '<cmd>DeltaView<cr>', desc = 'Deltaview: Inline diff (current file)' },
    { '<leader>gdm', '<cmd>DeltaMenu<cr>', desc = 'Deltaview: Modified files picker' },
  },
  config = function()
    require('deltaview').setup {
      use_nerdfonts = true,
      line_numbers = false,
      fzf_picker = nil,
      keyconfig = {
        dm_toggle_keybind = '<leader>gdm',
        dv_toggle_keybind = '<leader>gdv',
        d_toggle_keybind = '<leader>gd',
      },
    }
  end,
}
