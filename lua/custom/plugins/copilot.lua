-- return {
--   {
--     'zbirenbaum/copilot.lua',
--     cmd = 'Copilot',
--     event = 'InsertEnter',
--     config = function()
--       require('copilot').setup {
--         suggestion = {
--           auto_trigger = true,
--         },
--       }
--     end,
--   },
--   {
--     'zbirenbaum/copilot-cmp',
--     config = function()
--       require('copilot_cmp').setup()
--     end,
--   },
-- }

return {
  'Exafunction/codeium.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
  },
  config = function() end,
}
