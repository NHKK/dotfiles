return {
	-- {
	--   "nanotech/jellybeans.vim",
	--   name = "jellybeans",
	--   lazy = false,
	--   config = function()
	--     vim.cmd.colorscheme "jellybeans"
	--   end
	-- },
	{
		"VonHeikemen/little-wonder",
		lazy = false,
		config = function()
			vim.cmd.colorscheme("lw-mariana")
			--vim.cmd.colorscheme("lw-rubber")
		end,
	},
	-- {
	--   "echasnovski/mini.base16",
	--   lazy = false,
	--   config = function()
	--     require("mini.base16").setup({
	--       palette = {
	--         base00 = "#100E23",
	--         base01 = "#1E1C31",
	--         base02 = "#2D2B40",
	--         base03 = "#3E3859",
	--         base04 = "#8A889D",
	--         base05 = "#CBE3E7",
	--         base06 = "#CBE3E7",
	--         base07 = "#f3f4f5",
	--         base08 = "#7765d2",
	--         base09 = "#dc9147",
	--         base0A = "#e59e57",
	--         base0B = "#7c756e",
	--         base0C = "#fec286",
	--         base0D = "#ecab69",
	--         base0E = "#a49bcf",
	--         base0F = "#8e81cf",
	--       },
	--     })
	--   end,
	-- },
}
