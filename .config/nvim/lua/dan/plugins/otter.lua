return {
  'jmbuhr/otter.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  config = {
    lsp = {
      diagnostic_update_events = { 'BufWritePost' },
      auto_attach = true,
      -- root_dir = function(_, bufnr)
      --   return vim.fs.root(bufnr or 0, {
      --     '.git',
      --     '_quarto.yml',
      --     'package.json',
      --   }) or vim.fn.getcwd(0)
      -- end,
      root_dir = function(_, bufnr)
        -- Ensure vim.fs.root is available
        if vim.fs and vim.fs.root then
          -- Try to find the root directory based on the provided patterns
          local root = vim.fs.root(bufnr or 0, { '.git', '_quarto.yml', 'package.json' })
          -- If a root is found, return it; otherwise, return the current working directory
          return root or vim.fn.getcwd(0)
        else
          -- If vim.fs.root is not available, default to the current working directory
          return vim.fn.getcwd(0)
        end
      end,
    },
    buffers = {
      set_filetype = false,
      write_to_disk = false,
    },
    strip_wrapping_quote_characters = { "'", '"', '`' },
    handle_leading_whitespace = true,
  },
  opts = {},
}
