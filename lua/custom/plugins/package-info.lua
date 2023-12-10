return {
  'vuki656/package-info.nvim',
  dependencies = { 'MunifTanjim/nui.nvim' },
  config = function()
    require('package-info').setup {}
  end,
  keys = {
    { '<leader>ni', "<cmd>lua require('package-info').install()<cr>", desc = 'Install Package' },
    { '<leader>np', "<cmd>lua require('package-info').change_version()<cr>", desc = 'Change Package Version' },
  },
}
