return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup()

      vim.keymap.set('n', '<leader>at', function()
        harpoon:list():add()
      end)
      vim.keymap.set('n', '<leader>an', function()
        harpoon:list():replace_at(1, nil)
      end)
      vim.keymap.set('n', '<leader>ae', function()
        harpoon:list():replace_at(2, nil)
      end)
      vim.keymap.set('n', '<leader>ai', function()
        harpoon:list():replace_at(3, nil)
      end)
      vim.keymap.set('n', '<leader>ao', function()
        harpoon:list():replace_at(4, nil)
      end)

      vim.keymap.set('n', '<leader>h', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      vim.keymap.set('n', '<leader>n', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<leader>e', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<leader>i', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<leader>o', function()
        harpoon:list():select(4)
      end)

      --   local conf = require('telescope.config').values
      --   local function toggle_telescope(harpoon_files)
      --     local file_paths = {}
      --     for _, item in ipairs(harpoon_files.items) do
      --       table.insert(file_paths, item.value)
      --     end
      --
      --     require('telescope.pickers')
      --       .new({}, {
      --         prompt_title = 'Harpoon',
      --         finder = require('telescope.finders').new_table {
      --           results = file_paths,
      --         },
      --         previewer = conf.file_previewer {},
      --         sorter = conf.generic_sorter {},
      --       })
      --       :find()
      --   end
      --
      --   vim.keymap.set('n', '<leader>h', function()
      --     toggle_telescope(harpoon:list())
      --   end, { desc = 'Open harpoon window' })
    end,
  },
}
