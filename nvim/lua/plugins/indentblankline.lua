return {
  "lukas-reineke/indent-blankline.nvim",
  event = "BufReadPre",
  config = function()
    require('indent_blankline').setup {
      char = '┊',
      filetype_exclude = { 'help' },
      buftype_exclude = { 'terminal', 'nofile' },
      show_trailing_blankline_indent = false,
    }
  end
}
