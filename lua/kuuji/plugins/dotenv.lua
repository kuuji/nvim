return {
	"ellisonleao/dotenv.nvim",
	opts = {
		enable_on_load = true,
		verbose = false,
	},
	-- only run if .env file is found
	run = function()
		return vim.fn.filereadable(".env") == 1
	end,
}
