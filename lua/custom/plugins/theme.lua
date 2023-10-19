return {
  "f-person/auto-dark-mode.nvim",
  dependencies = {
    "EdenEast/nightfox.nvim",
  },
  config = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.cmd.colorscheme 'nightfox'
    end,
    set_light_mode = function()
      vim.cmd.colorscheme 'dayfox'
    end,
  },
}
