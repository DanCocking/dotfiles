return {
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup()
    require('mini.statusline').setup()
    require('mini.git').setup()
    require('mini.diff').setup {
      vim.keymap.set('n', '<leader>gd', '<Cmd>:lua MiniDiff.toggle_overlay()<CR>'),
    }
    require('mini.bracketed').setup()
    require('mini.cursorword').setup()
    require('mini.pairs').setup()
  end,
}
