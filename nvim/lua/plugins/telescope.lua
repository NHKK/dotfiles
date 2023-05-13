local M = {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" }
	},
	cmd = { "Telescope" },
}

function M.config()
	local telescope = require("telescope")
	telescope.setup({})
end

M.keys = {
	{ "<leader>ff", "<cmd>:Telescope find_files<CR>", { "n" }, desc = "Telescope files"   },
	{ "<leader>fg", "<cmd>:Telescope live_grep<CR>" , { "n" }, desc = "Telescope grep"    },
	{ "<leader>fb", "<cmd>:Telescope buffers<CR>"   , { "n" }, desc = "Telescope buffers" },
	{ "<leader>fh", "<cmd>:Telescope help_tags<CR>" , { "n" }, desc = "Telescope help"    },
}

return M
