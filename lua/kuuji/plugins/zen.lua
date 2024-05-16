return {
	"Pocco81/true-zen.nvim",
	opts = {},
	config = function()
		local truezen = require("true-zen")

		vim.keymap.set("n", "<leader>zf", truezen.focus, { noremap = true }, { desc = "Zen: Focus" })
	end,
}
