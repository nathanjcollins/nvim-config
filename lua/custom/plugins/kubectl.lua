return {
  {
    'ramilito/kubectl.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      {
        '<leader>k',
        function()
          require('kubectl').open()
        end,
        desc = 'Kubectl',
      },
    },
    config = function()
      require('kubectl').setup {
        auto_refresh = {
          enabled = true,
          interval = 3000,
        },
      }
    end,
  },
}
