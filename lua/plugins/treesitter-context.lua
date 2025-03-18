return {
  'nvim-treesitter/nvim-treesitter-context',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('treesitter-context').setup {
      -- 기본 설정을 사용하거나 필요한 설정을 여기에 추가할 수 있습니다
      -- enable = true, -- 기본값은 true입니다
      -- max_lines = 0, -- 컨텍스트가 표시될 최대 라인 수 (0 = 무제한)
      -- trim_scope = 'outer', -- 어떤 컨텍스트를 보여줄지 (inner/outer)
      max_lines = 3,
    }
  end,
}
