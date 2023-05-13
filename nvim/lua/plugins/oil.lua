return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = {"Oil"},
  keys = {
    { "<leader>fe", "<cmd>Oil<cr>", desc = "Oil" },
  },
  config = function()
    require("oil").setup()
  end
}
