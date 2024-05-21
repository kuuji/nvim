return {
	"crispgm/nvim-go",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {},
	config = function()
		require("go").setup({
			auto_lint = false,
		})
		local NvimGo = vim.api.nvim_create_augroup("NvimGo", {
			clear = true,
		})
		vim.api.nvim_create_autocmd({ "User" }, {
			pattern = "NvimGoLintPopupPost",
			group = NvimGo,
			command = "wincmd p",
		})
	end,
}
