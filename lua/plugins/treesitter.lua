return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  -- Note: nvim-treesitter API changed - highlighting is now via vim.treesitter.start()
  config = function()
    -- Install parsers using the correct module
    local install = require('nvim-treesitter.install')
    install.prefer_git = false
    install.ensure_installed({
      'lua',
      'python',
      'javascript',
      'typescript',
      'vimdoc',
      'vim',
      'regex',
      'terraform',
      'sql',
      'dockerfile',
      'toml',
      'json',
      'java',
      'groovy',
      'go',
      'gotmpl',
      'gitignore',
      'graphql',
      'yaml',
      'make',
      'cmake',
      'markdown',
      'markdown_inline',
      'bash',
      'tsx',
      'css',
      'html',
      'c',
      'rust',
      'zig',
      'jsonnet',
      'odin',
    })

    -- Enable treesitter highlighting for most filetypes
    vim.api.nvim_create_autocmd('FileType', {
      pattern = {
        'lua',
        'python',
        'javascript',
        'typescript',
        'vim',
        'terraform',
        'sql',
        'dockerfile',
        'toml',
        'json',
        'java',
        'groovy',
        'go',
        'yaml',
        'make',
        'cmake',
        'markdown',
        'bash',
        'sh',
        'tsx',
        'css',
        'html',
        'c',
        'rust',
        'zig',
        'jsonnet',
        'odin',
      },
      callback = function()
        vim.treesitter.start()
      end,
    })

    -- Enable treesitter-based indenting for select languages
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'lua', 'python', 'javascript', 'typescript', 'go', 'rust', 'c' },
      callback = function()
        vim.bo.indentexpr = 'v:lua.vim.treesitter.indentexpr()'
      end,
    })
  end,
  -- There are additional nvim-treesitter modules that you can use to interact
  -- with nvim-treesitter. You should go explore a few and see what interests you:
  --
  --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
  --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
  --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
}
