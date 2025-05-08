return {
  'supermaven-inc/supermaven-nvim',
  config = function()
    require('supermaven-nvim').setup {
      keymaps = {
        accept_suggestion = '<S-Tab>',
      },
      condition = function()
        -- Only works in buffer
        -- return (vim.api.nvim_win_get_config(0).relative ~= '')

        -- expect in nvim.ai chat-dialog
        return (vim.bo.filetype == 'chat-dialog')
      end,
    }
  end,
}
