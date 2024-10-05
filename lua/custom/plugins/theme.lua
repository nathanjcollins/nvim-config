return {
  'f-person/auto-dark-mode.nvim',
  dependencies = {
    { 'scottmckendry/cyberdream.nvim', opts = { transparent = true, theme = { variant = 'auto' } } },
  },
  config = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.cmd.colorscheme 'cyberdream'
      -- vim.o.background = 'dark'
    end,
    set_light_mode = function()
      vim.cmd.colorscheme 'cyberdream'
      -- vim.o.background = 'light'
    end,
  },
}
