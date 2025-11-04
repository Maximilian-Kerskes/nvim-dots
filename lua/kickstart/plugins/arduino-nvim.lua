return {
  'glebzlat/arduino-nvim',
  ft = 'arduino', -- make sure this triggers only for Arduino files
  config = function()
    require('arduino-nvim').setup {
      default_fqbn = 'arduino:avr:uno',
      arduino = '/usr/bin/arduino-cli',
      clangd = '/home/yato/.local/share/nvim/mason/bin/clangd',
    }
  end,
}
