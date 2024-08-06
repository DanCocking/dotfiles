return {
  { 'folke/tokyonight.nvim' },
  { 'Mofiqul/dracula.nvim' },
  {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = 'light'

      vim.cmd.colorscheme 'dracula'
    end,
  },
}
