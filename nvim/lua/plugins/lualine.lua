return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'jellybeans',
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { {
          'filename',
          file_status = true,
          path = 0
        } },
        lualine_x = {
          {
            'diagnostics',
            sources = { "nvim_diagnostic" },
            symbols = {
              error = ' ',
              warn = ' ',
              info = ' ',
              hint = ' '
            }
          },
          'encoding',
          'filetype'
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
      },
      tabline = {},
    }
  end
}
