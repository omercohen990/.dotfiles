return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('harpoon').setup({
      tabline = false,
    })

    vim.keymap.set({ 'n', 'x', 'o' }, '<leader>hh', require('harpoon.mark').toggle_file,
      { desc = 'Harpoon - Toggle Mark' })

    vim.keymap.set({ 'n', 'x', 'o' }, '<leader>hl', require('harpoon.ui').toggle_quick_menu, { desc = 'Harpoon - List' })

    vim.keymap.set('n', '<leader>sl', ':Telescope harpoon marks<cr>', { desc = '[S]earch Harpoon [M]arks' })

    for i = 1, 9 do
      vim.keymap.set({ 'n', 'x', 'o' }, '<C-' .. i .. '>', function()
        require('harpoon.ui').nav_file(i)
      end, { desc = 'Harpoon - to file ' .. i })
    end

    pcall(require('telescope').load_extension, 'harpoon')
  end,
}
