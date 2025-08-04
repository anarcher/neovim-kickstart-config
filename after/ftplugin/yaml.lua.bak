-- YAML-specific settings to match yamllint configuration
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true

-- Ensure newline at end of file
vim.opt_local.fixendofline = true

-- Use unix line endings
vim.opt_local.fileformat = 'unix'

-- Remove trailing whitespace on save
vim.api.nvim_create_autocmd('BufWritePre', {
  buffer = 0,
  callback = function()
    local save_cursor = vim.fn.getpos('.')
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos('.', save_cursor)
  end,
})