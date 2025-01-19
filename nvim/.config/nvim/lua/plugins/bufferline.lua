return {
  'akinsho/bufferline.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  version = '*',
  event = 'TabEnter',
  opts = function()
    return {
      options = {
        mode = 'tabs',
        separator_style = 'slant',
        always_show_bufferline = true,
      },
    }
  end,
}
