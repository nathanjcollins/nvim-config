return {
  'f-person/auto-dark-mode.nvim',
  dependencies = {
    'rebelot/kanagawa.nvim',
  },
  config = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.cmd.colorscheme 'kanagawa-wave'
    end,
    set_light_mode = function()
      vim.cmd.colorscheme 'kanagawa-lotus'
    end,
  },
}
