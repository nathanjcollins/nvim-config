return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('fzf-lua').setup {
      defaults = {
        formatter = 'path.filename_first',
        multiline = 2,
      },
    }
  end,
}
