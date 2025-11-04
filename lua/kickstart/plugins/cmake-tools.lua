return {
  {
    'Civitasv/cmake-tools.nvim',
    keys = {},
    config = function()
      require('cmake-tools').setup {
        cmake_executor = {
          opts = { 'toggleterm' },
        },
        cmake_runner = {
          opts = { 'toggleterm' },
        },
      }
    end,
  },
}
