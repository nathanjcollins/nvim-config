return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        cs = { 'csharpier' },
        css = { 'prettierd' },
        javascript = { 'prettierd' },
        json = { 'prettierd' },
        lua = { 'stylua' },
        markdown = { 'prettierd' },
        scss = { 'prettierd' },
        sh = { 'shfmt' },
        typescript = { 'prettierd' },
        vue = { 'prettierd' },
        xml = { 'prettierd' },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
      },
    }
  end,
}
