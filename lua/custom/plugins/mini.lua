return {
  {
    'echasnovski/mini.clue',
    version = false,
    config = function()
      local miniclue = require 'mini.clue'
      miniclue.setup {
        triggers = {
          -- Leader triggers
          { mode = 'n', keys = '<Leader>' },
          { mode = 'x', keys = '<Leader>' },

          -- Built-in completion
          { mode = 'i', keys = '<C-x>' },

          -- `g` key
          { mode = 'n', keys = 'g' },
          { mode = 'x', keys = 'g' },

          -- Marks
          { mode = 'n', keys = "'" },
          { mode = 'n', keys = '`' },
          { mode = 'x', keys = "'" },
          { mode = 'x', keys = '`' },

          -- Registers
          { mode = 'n', keys = '"' },
          { mode = 'x', keys = '"' },
          { mode = 'i', keys = '<C-r>' },
          { mode = 'c', keys = '<C-r>' },

          -- Window commands
          { mode = 'n', keys = '<C-w>' },

          -- `z` key
          { mode = 'n', keys = 'z' },
          { mode = 'x', keys = 'z' },
        },

        clues = {
          -- Enhance this by adding descriptions for <Leader> mapping groups
          miniclue.gen_clues.builtin_completion(),
          miniclue.gen_clues.g(),
          miniclue.gen_clues.marks(),
          miniclue.gen_clues.registers(),
          miniclue.gen_clues.windows(),
          miniclue.gen_clues.z(),
        },
      }
    end,
  },
  {
    'echasnovski/mini.files',
    version = false,
    config = function()
      require('mini.files').setup {
        windows = { preview = true, width_preview = 50 },
      }
    end,
  },
  {
    'echasnovski/mini.surround',
    version = false,
    opts = {},
  },

  {
    'echasnovski/mini.diff',
    version = false,
    opts = {},
  },
  { 'echasnovski/mini.indentscope', version = false, opts = {} },
  -- { 'echasnovski/mini.notify', version = false, opts = {} },
  { 'echasnovski/mini.cursorword', version = false, opts = {} },
  { 'echasnovski/mini.starter', version = false, opts = { autoopen = true } },
  { 'echasnovski/mini.sessions', version = false, opts = {} },
  { 'echasnovski/mini.icons', version = false, opts = {} },
}
