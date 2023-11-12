return {
  'nvim-neotest/neotest',
  dependencies = {
    'haydenmeade/neotest-jest',
    'marilari88/neotest-vitest',
  },
  keys = {
    {
      '<leader>tt',
      function()
        require('neotest').run.run(vim.fn.expand '%')
      end,
      desc = 'Test File',
    },
    {
      '<leader>tr',
      function()
        require('neotest').run.run()
      end,
      desc = 'Run Nearest Test',
    },
    {
      '<leader>ts',
      function()
        require('neotest').summary.toggle()
      end,
      desc = 'Run Last Test',
    },
    {
      '<leader>tl',
      function()
        require('neotest').run.run_last()
      end,
      desc = 'Run Last Test',
    },
    {
      '<leader>tL',
      function()
        require('neotest').run.run_last { strategy = 'dap' }
      end,
      desc = 'Debug Last Test',
    },
    {
      '<leader>tw',
      "<cmd>lua require('neotest').run.run({ jestCommand = 'jest --watch ' })<cr>",
      desc = 'Run Watch',
    },
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-jest' {
          jestCommand = 'npm test --',
          jestConfigFile = 'custom.jest.config.ts',
          env = { CI = true },
          cwd = function(path)
            return vim.fn.getcwd()
          end,
        },
        require 'neotest-vitest',
      },
    }
  end,
}
