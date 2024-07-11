return {
  'nvim-neorg/neorg',
  dependencies = { 'luarocks.nvim' },
  version = '*',
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {},
        ['core.concealer'] = {
          config = {
            folds = true,
            icon_preset = 'diamond',
            init_open_folds = 'never',
          },
        },
        ['core.dirman'] = {
          config = {
            workspaces = {
              notes = '~/notes',
            },
            default_workspace = 'notes',
          },
        },
        ['core.summary'] = {},
      },
    }

    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}
