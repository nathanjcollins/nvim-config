-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({
    lhs,
    mode = mode,
  }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", {
  desc = "Debug: Continue",
})
map("n", "<F10>", "<cmd>lua require'dap'.step_over()<cr>", {
  desc = "Debug: Step Over",
})
map("n", "<F11>", "<cmd>lua require'dap'.step_into()<cr>", {
  desc = "Debug: Step Into",
})
map("n", "<F12>", "<cmd>lua require'dap'.step_out()<cr>", {
  desc = "Debug: Step Out",
})
map("n", "<leader>cb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", {
  desc = "Debug: Toggle Breakpoint",
})
-- nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
-- nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
-- nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
-- nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
