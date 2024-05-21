return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "AndreM222/copilot-lualine" },
	opts = {
		options = {
			section_separators = { left = "", right = "" },
			component_separators = { left = "", right = "" },
		},
		sections = {
			lualine_x = { {
				"copilot",
				show_colors = true,
			}, "encoding", "fileformat", "filetype" },
		},
	},
}
