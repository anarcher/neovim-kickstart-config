return {
  'aaronik/treewalker.nvim',

  -- The following options are the defaults.
  -- Treewalker aims for sane defaults, so these are each individually optional,
  -- and setup() does not need to be called, so the whole opts block is optional as well.
  opts = {
    -- Whether to briefly highlight the node after jumping to it
    highlight = true,

    -- How long should above highlight last (in ms)
    highlight_duration = 250,

    -- The color of the above highlight. Must be a valid vim highlight group.
    -- (see :h highlight-group for options)
    highlight_group = 'CursorLine',
  },
  config = function()
    -- TODO: need more good keymaps
    -- movement
    vim.keymap.set({ 'n', 'v' }, 'gk', '<cmd>Treewalker Up<cr>', { silent = true })
    vim.keymap.set({ 'n', 'v' }, 'gj', '<cmd>Treewalker Down<cr>', { silent = true })
    vim.keymap.set({ 'n', 'v' }, 'gh', '<cmd>Treewalker Left<cr>', { silent = true })
    vim.keymap.set({ 'n', 'v' }, 'gl', '<cmd>Treewalker Right<cr>', { silent = true })

    -- swapping
    vim.keymap.set('n', 'gsk', '<cmd>Treewalker SwapUp<cr>', { silent = true })
    vim.keymap.set('n', 'gsj', '<cmd>Treewalker SwapDown<cr>', { silent = true })
    vim.keymap.set('n', 'gsh', '<cmd>Treewalker SwapLeft<cr>', { silent = true })
    vim.keymap.set('n', 'gsl', '<cmd>Treewalker SwapRight<cr>', { silent = true })
  end,
}
