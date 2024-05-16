return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		-- opts = {
		-- 	debug = true, -- Enable debugging
		-- 	-- See Configuration section for rest
		-- },
		-- keys = {
		-- 	{ "<leader>ct", "<cmd>CopilotChatToggle<CR>", desc = "Toggle copilot chat" },
		-- },
		config = function()
			local cc = require("CopilotChat")
			cc.setup({
				-- Configuration here
				debug = true,
				prompts = {
					Godoc = {
						prompt = "/COPILOT_GENERATE Please add a short documentation comment for the selection. Respect the godoc convention as much as possible. Do not remove the function's content",
					},
				},
			})

			-- remaps
			vim.keymap.set({ "n", "v" }, "<leader>ct", cc.toggle, { desc = "[C]opilot Chat [T]oggle" })
			-- reset
			vim.keymap.set("n", "<leader>cr", cc.reset, { desc = "[C]opilot Chat [R]eset" })
			--stop
			vim.keymap.set("n", "<leader>cs", cc.stop, { desc = "[C]opilot Chat [S]top" })
			-- explain
			vim.keymap.set("v", "<leader>cx", "<cmd>CopilotChatExplain<CR>", { desc = "[C]opilot Chat e[X]plain" })
			-- fix
			vim.keymap.set("v", "<leader>cf", "<cmd>CopilotChatFix<CR>", { desc = "[C]opilot Chat [F]ix" })
			-- review
			vim.keymap.set("v", "<leader>cv", "<cmd>CopilotChatReview<CR>", { desc = "[C]opilot Chat Re[V]iew" })
			-- optimize
			vim.keymap.set("v", "<leader>co", "<cmd>CopilotChatOptimize<CR>", { desc = "[C]opilot Chat [O]ptimize" })
			-- document
			vim.keymap.set("n", "<leader>cd", function()
				vim.fn.feedkeys("va{V")
				-- run cmd CopilotChatDocs
				vim.cmd("CopilotChatGodoc")
			end, { desc = "[C]opilot Chat [D]ocument" })
		end,
	},
}
