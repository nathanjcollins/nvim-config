return {
  'ibhagwan/fzf-lua',
  dependencies = { 'echasnovski/mini.icons', version = false },
  config = function()
    require('fzf-lua').setup {
      defaults = {
        formatter = 'path.filename_first',
        multiline = 2,
        keymap = {
          fzf = {
            ['ctrl-q'] = 'select-all+accept',
          },
        },
      },
    }
  end,
}
