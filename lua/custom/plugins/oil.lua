local detail = false
return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = false,
    columns = {
      'icon',
    },
    view_options = {
      show_hidden = false,
    },
    float = {
      -- Padding around the floating window
      padding = 2,
      max_width = 0,
      max_height = 0,
      border = 'rounded',
      win_options = {
        winblend = 0,
      },
      -- preview_split: Split direction: "auto", "left", "right", "above", "below".
      preview_split = 'auto',
      -- This is the config that will be passed to nvim_open_win.
      -- Change values here to customize the layout
      override = function(conf)
        return conf
      end,
    },
    keymaps = {
      ['gd'] = {
        desc = 'Toggle file detail view',
        callback = function()
          detail = not detail
          if detail then
            require('oil').set_columns { 'icon', 'permissions', 'size', 'mtime' }
          else
            require('oil').set_columns { 'icon' }
          end
        end,
      },
    },
  },
  keys = {
    { '<leader>o', ':Oil --float<CR>', { desc = 'Oil explorer float' } },
  },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
