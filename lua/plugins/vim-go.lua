return {
  'fatih/vim-go',
  ft = { 'go' },
  dependencies = {
    'junegunn/fzf',
    'junegunn/fzf.vim'
  },
  config = function()
    vim.g.go_bin_path = os.getenv 'HOME' .. '/gotools'
  end,
}
