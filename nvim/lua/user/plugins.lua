local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user.after
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim"

  -----------------------------------------------------
  --REQUIRED-------------------------------------------
  -----------------------------------------------------
  use("nvim-lua/plenary.nvim")

  -- THEME
  use {
    "embark-theme/vim",
    as = "embark",
    config = function()
      require("user.after.colorscheme")
    end
  }

  -- ICONS
  use({
    "kyazdani42/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup()
    end,
  })

  -- File Tree
  use "lambdalisue/fern.vim"
  use "yuki-yano/fern-preview.vim"

  -- Telescope
  use({
    "nvim-telescope/telescope.nvim",
    config = function()
      require("user.after.telescope")
    end
  })
  use "nvim-telescope/telescope-media-files.nvim"
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("user.after.treesitter")
    end
  }

  -- Rainbow Match (){}[]
  use "p00f/nvim-ts-rainbow"

  -- Mini
  use {
    "echasnovski/mini.nvim",
    branch = "stable",
    config = function()
      require("user.after.mini")
    end
  }

  -- LSP Zero
  use {
    "VonHeikemen/lsp-zero.nvim",
    requires = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    }
  }

  -- Debugger
  --use "mfussenegger/nvim-dap"
  --use "theHamsta/nvim-dap-virtual-text"
  --use "rcarriga/nvim-dap-ui"
  --use "nvim-telescope/telescope-dap.nvim"

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
