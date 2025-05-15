return {
  'fatih/vim-go',
  ft = { 'go' },
  config = function()
    vim.g.go_bin_path = os.getenv 'HOME' .. '/gotools'
  end,
}
