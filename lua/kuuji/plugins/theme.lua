return {
	{
		-- You can easily change to a different colorscheme.
		-- Change the name of the colorscheme plugin below, and then
		-- change the command in the config to whatever the name of that colorscheme is.
		--
		-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
		"sainnhe/sonokai",
		-- priority = 1000, -- Make sure to load this before all the other start plugins.
		config = function()
			-- Load the colorscheme here.
			-- Like many other themes, this one has different styles, and you could load
			-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
			vim.g.sonokai_style = "maia"
			vim.g.sonokai_colors_override = { diff_green = { "#414B53", "52" } }
			vim.cmd.colorscheme("sonokai")

			vim.cmd.hi("Comment gui=none")
			-- You can configure highlights by doing something like:
		end,
	},
	{
		"brenoprata10/nvim-highlight-colors",
		opts = { enable_named_colors = false },
		config = function()
			-- only load on .tmux.conf file
			require("nvim-highlight-colors").setup({
				enable_named_colors = false,
			})
			-- if vim.fn.expand("%:t") == ".tmux.conf" then
			-- 	require("nvim-highlight-colors").setup(opts)
			-- end
		end,
	},
}
