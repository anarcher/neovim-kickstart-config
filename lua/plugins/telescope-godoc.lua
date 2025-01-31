return {
  'blacktrub/telescope-godoc.nvim',
  config = function()
    require('telescope').load_extension 'godoc'
  end,
}
