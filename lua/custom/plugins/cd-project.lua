return {
  'LintaoAmons/cd-project.nvim',
  opts = {
    hooks = {
      {
        callback = function(dir)
          vim.notify('switched to dir: ' .. dir)
          vim.cmd 'bufdo bd!'
          require('persistence').load()
        end,
      },
    },
  },
  keys = {
    {
      mode = { 'n' },
      '<Leader>pc',
      '<cmd>CdProject<cr>',
      desc = 'CdProject: Change Project',
    },
    {
      mode = { 'n' },
      '<Leader>pb',
      '<cmd>CdProjectBack<cr>',
      desc = 'CdProject: Change Project',
    },
    {
      mode = { 'n' },
      '<Leader>pa',
      '<cmd>CdProjectAdd<cr>',
      desc = 'CdProject: Add Project',
    },
  },
}
