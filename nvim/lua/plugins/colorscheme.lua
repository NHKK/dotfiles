return {
  --   {
  --   "nanotech/jellybeans.vim",
  --   name = "jellybeans",
  --   lazy = false,
  --   config = function()
  --     vim.cmd.colorscheme = "jellybeans"
  --   end,
  -- },
  {
    "nordtheme/vim",
    name = "nord",
    lazy = false,
    config = function()
      vim.cmd.colorscheme = "nord"
    end,
  },
}
