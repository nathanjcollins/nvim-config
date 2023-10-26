return {
  'stevearc/conform.nvim',
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        css = { "prettierd" },
        javascript = { "prettierd" },
        lua = { "stylua" },
        markdown = { "prettierd" },
        sh = { "shfmt" },
        typescript = { "prettierd" },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
      },
    })
  end
}
