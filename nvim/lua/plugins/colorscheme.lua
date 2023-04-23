return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    keys = {
      { "<leader>cl", "<cmd>Telescope colorscheme enable_preview=true<cr>", desc = "Select Colorscheme with Preview" }
    },
    config = function()
      require("catppuccin").setup {
        transparent_background = true,
      }
      vim.cmd.colorscheme "catppuccin"
    end
  },
}
