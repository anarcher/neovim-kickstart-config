# CLAUDE.md - Neovim Kickstart Configuration Guide

## Commands
- Format: `:lua vim.lsp.buf.format()`
- Lint: Automatic via LSP/none-ls
- Tests: `<leader>tt` (run file), `<leader>tr` (run nearest), `<leader>tT` (run all)
- LSP Status: `:LspInfo`
- Mason Package Manager: `:Mason`

## Code Style
- Indent: 4 spaces (expandtab)
- Line width: No strict limit (wrap=false)
- Lua plugin structure: Return a table with dependencies and config function
- Prefer descriptive function parameter names
- Format on save enabled via none-ls
- Use modular file organization with separate plugin configs

## Conventions
- Return tables for plugin definitions
- Use comments for complex logic explanation
- When adding dependencies, follow existing structure pattern
- Organize related functionality in focused modules
- Use the extensive keymapping system for new functionality

## Formatters
- Lua: stylua
- JavaScript/TypeScript: prettier
- Go: gofumpt
- Python: ruff
- Rust: dxfmt
- Shell: shfmt