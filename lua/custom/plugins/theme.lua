return {
  'f-person/auto-dark-mode.nvim',
  dependencies = {
    'ribru17/bamboo.nvim',
  },
  config = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.cmd.colorscheme 'bamboo'
      vim.o.background = 'dark'
    end,
    set_light_mode = function()
      vim.cmd.colorscheme 'bamboo'
      vim.o.background = 'light'
    end,
  },
}
