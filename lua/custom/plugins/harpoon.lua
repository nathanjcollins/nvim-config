return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    vim.keymap.set('n', '<leader>h', '<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc = 'Toggle Harpoon' })
    vim.keymap.set('n', '<leader>H', '<Cmd>lua require("harpoon.mark").add_file()<CR>', { desc = 'Add Open File To Harpoon' })
    vim.keymap.set('n', '<leader>1', '<Cmd>lua require("harpoon.ui").nav_file(1)<CR>', { desc = 'Open File 1' })
    vim.keymap.set('n', '<leader>2', '<Cmd>lua require("harpoon.ui").nav_file(2)<CR>', { desc = 'Open File 2' })
    vim.keymap.set('n', '<leader>3', '<Cmd>lua require("harpoon.ui").nav_file(3)<CR>', { desc = 'Open File 3' })
    vim.keymap.set('n', '<leader>4', '<Cmd>lua require("harpoon.ui").nav_file(4)<CR>', { desc = 'Open File 4' })
    vim.keymap.set('n', '<leader>5', '<Cmd>lua require("harpoon.ui").nav_file(5)<CR>', { desc = 'Open File 5' })
    vim.keymap.set('n', '<leader>6', '<Cmd>lua require("harpoon.ui").nav_file(6)<CR>', { desc = 'Open File 6' })
    vim.keymap.set('n', '<leader>7', '<Cmd>lua require("harpoon.ui").nav_file(7)<CR>', { desc = 'Open File 7' })
    vim.keymap.set('n', '<leader>8', '<Cmd>lua require("harpoon.ui").nav_file(8)<CR>', { desc = 'Open File 8' })
    vim.keymap.set('n', '<leader>9', '<Cmd>lua require("harpoon.ui").nav_file(9)<CR>', { desc = 'Open File 9' })
  end,
}
