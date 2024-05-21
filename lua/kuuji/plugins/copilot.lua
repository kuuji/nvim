return {
	"zbirenbaum/copilot.lua",
	config = function()
		require("copilot").setup({
			panel = {
				enabled = false,
			},
			suggestion = {
				enabled = true,
				auto_trigger = true,
				debounce = 75,
				keymap = {
					accept = "<M-l>",
					accept_word = "<M-j>",
					accept_line = "<M-k>",
					next = "<M-]>",
					prev = "<M-[>",
					dismiss = "<C-]>",
				},
			},
			filetypes = {
				yaml = true,
				markdown = true,
				help = false,
				gitcommit = false,
				gitrebase = false,
				hgcommit = false,
				svn = false,
				cvs = false,
				["."] = false,
			},
		})
		-- set keymap to toggle auto_trigger
		vim.keymap.set(
			"n",
			"<leader>ac",
			require("copilot.suggestion").toggle_auto_trigger,
			{ desc = "Toggle copilot auto trigger" }
		)

		-- vim.api.nvim_create_autocmd({ "BufEnter" }, {
		-- 	callback = function()
		-- 		if vim.b.copilot_suggestion_auto_trigger == nil then
		-- 			require("copilot.suggestion").toggle_auto_trigger()
		-- 		end
		-- 	end,
		-- })
	end,
}
