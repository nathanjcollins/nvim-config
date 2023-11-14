return {
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
    config = function()
      require('mini.surround').setup()
    end,
  },
}
