return {
  'elentok/format-on-save.nvim',
  config = function()
    local format_on_save = require("format-on-save")
    local formatters = require("format-on-save.formatters")

    format_on_save.setup({
      exclude_path_patterns = {
        "/node_modules/",
        ".local/share/nvim/lazy",
      },
      formatter_by_ft = {
        cs = formatters.lsp,
        css = formatters.lsp,
        fs = formatters.lsp,
        html = formatters.lsp,
        java = formatters.lsp,
        json = formatters.lsp,
        lua = formatters.lsp,
        markdown = formatters.prettierd,
        openscad = formatters.lsp,
        prisma = formatters.lsp,
        rust = formatters.lsp,
        scad = formatters.lsp,
        scss = formatters.lsp,
        sh = formatters.shfmt,
        terraform = formatters.lsp,
        typescript = formatters.prettierd,
        typescriptreact = formatters.prettierd,
        vue = formatters.prettierd,
        yaml = formatters.lsp,
      },

      -- Optional: fallback formatter to use when no formatters match the current filetype
      fallback_formatter = {
        formatters.remove_trailing_whitespace,
        formatters.remove_trailing_newlines,
        formatters.prettierd,
      },

      -- By default, all shell commands are prefixed with "sh -c" (see PR #3)
      -- To prevent that set `run_with_sh` to `false`.
      run_with_sh = false,
    })
  end
}