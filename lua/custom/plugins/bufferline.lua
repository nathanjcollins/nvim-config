return {
  'akinsho/bufferline.nvim',
  branch = 'main',
  dependencies = { 'echasnovski/mini.icons', version = false },
  config = function()
    require('bufferline').setup()
  end,
}
