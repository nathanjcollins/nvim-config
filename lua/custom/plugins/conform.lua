return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        cs = {
          command = 'dotnet',
          args = {'csharpier'},
          cwd = require('conform.util').root_file { '.editorconfig' },
          require_cwd = true,
        },
        css = { 'prettierd' },
        fsharp = {
          command = 'dotnet',
          args = { 'fantomas' },
          cwd = require('conform.util').root_file { '.editorconfig' },
          require_cwd = true,
        },
        javascript = { 'prettierd' },
        json = { 'prettierd' },
        lua = { 'stylua' },
        -- markdown = { 'prettierd' },
        scss = { 'prettierd' },
        sh = { 'shfmt' },
        typescript = { 'prettierd' },
        vue = { 'prettierd', 'rustywind' },
        xml = { 'prettierd' },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 1000,
      },
    }
  end,
}
