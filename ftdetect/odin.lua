vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.odin",
  callback = function()
    vim.bo.filetype = "odin"
  end,
})