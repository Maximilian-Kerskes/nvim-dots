return {
  {
    'stevearc/oil.nvim',
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    keys = {
      { '<leader>oo', ':Oil --float --preview<CR>', mode = 'n', desc = 'Toggle Oil window' },
    },
    config = function()
      require('oil').setup {
        default_file_explorer = true,
        view_options = {
          show_hidden = true, -- Show hidden files
        },
      }
    end,
  },
}
