return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    dashboard.section.header.val = {
      [[ ________   ________  _________  ___  ___  ________  ________      ]],
      [[|\   ___  \|\   __  \|\___   ___\\  \|\  \|\   __  \|\   ___  \    ]],
      [[\ \  \\ \  \ \  \|\  \|___ \  \_\ \  \\\  \ \  \|\  \ \  \\ \  \   ]],
      [[ \ \  \\ \  \ \   __  \   \ \  \ \ \   __  \ \   __  \ \  \\ \  \  ]],
      [[  \ \  \\ \  \ \  \ \  \   \ \  \ \ \  \ \  \ \  \ \  \ \  \\ \  \ ]],
      [[   \ \__\\ \__\ \__\ \__\   \ \__\ \ \__\ \__\ \__\ \__\ \__\\ \__\]],
      [[    \|__| \|__|\|__|\|__|    \|__|  \|__|\|__|\|__|\|__|\|__| \|__|]],
    }
    dashboard.section.buttons.val = {
      dashboard.button('e', '📄  New File', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '🔍  Find Files', ':Telescope find_files <CR>'),
      dashboard.button('g', '🔦  Grep', ':Telescope live_grep <CR>'),
      dashboard.button('l', '⚡︎  LazyGit', ':LazyGit <CR>'),
      dashboard.button('s', '🔄  Restore Session', [[:lua require("persistence").load() <cr>]]),
      dashboard.button('q', '❌  Quit NVIM', ':qa<CR>'),
    }
    local handle = io.popen 'fortune'
    local fortune = handle:read '*a'
    handle:close()
    dashboard.section.footer.val = fortune

    dashboard.config.opts.noautocmd = true

    vim.cmd [[autocmd User AlphaReady echo 'ready']]

    alpha.setup(dashboard.config)
  end,
}
