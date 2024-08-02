return {
  {
    'quarto-dev/quarto-nvim',
    ft = { 'quarto', 'markdown' },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'jmbuhr/otter.nvim',
    },
    config = {
      lspFeatures = {
        languages = { 'python' },
        chunks = 'all',
        diagnostics = {
          enabled = true,
          triggers = { 'BufWritePost' },
        },
        completion = {
          enabled = true,
        },
      },
      keymap = {
        hover = 'K',
        definition = 'gd',
        rename = '<leader>rn',
        references = 'gr',
        format = '<leader>gf',
      },
      codeRunner = {
        enabled = true,
        default_method = 'molten',
      },
    },
    vim.keymap.set('n', '<localleader>cc', 'i`<c-y>', { desc = 'Create a new code cell', silent = true }),
    vim.keymap.set('n', '<localleader>cs', 'i```\r\r```{}<left>', { desc = 'Split code cell', silent = true, noremap = true }),
  },
}
