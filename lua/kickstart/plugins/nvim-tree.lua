-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  {
    'nvim-tree/nvim-tree.lua',
    keys = {
      -- Correct format: each keymap is a flat table
      { '<leader>nt', '<cmd>NvimTreeToggle<CR>', mode = 'n', desc = 'Toggle NvimTree' },
    },
    config = function()
      require('nvim-tree').setup {
        respect_buf_cwd = true,
        reload_on_bufenter = true,
        update_focused_file = {
          enable = true,
        },
      }
    end,
  },
}
