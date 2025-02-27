return {
	"GeorgesAlkhouri/nvim-aider",
	cmd = {
		"AiderTerminalToggle",
		"AiderHealth",
	},
	keys = {
		{ "<leader>a/", "<cmd>AiderTerminalToggle<cr>", desc = "Open Aider" },
		{ "<leader>as", "<cmd>AiderTerminalSend<cr>", desc = "Send to Aider", mode = { "n", "v" } },
		{ "<leader>ac", "<cmd>AiderQuickSendCommand<cr>", desc = "Send Command To Aider" },
		{ "<leader>ab", "<cmd>AiderQuickSendBuffer<cr>", desc = "Send Buffer To Aider" },
		{ "<leader>a+", "<cmd>AiderQuickAddFile<cr>", desc = "Add File to Aider" },
		{ "<leader>a-", "<cmd>AiderQuickDropFile<cr>", desc = "Drop File from Aider" },
		{ "<leader>ar", "<cmd>AiderQuickReadOnlyFile<cr>", desc = "Add File as Read-Only" },
	},
	dependencies = {
		"folke/snacks.nvim",
		-- Optional dependencies - uncomment if you use these
		-- "catppuccin/nvim",
		-- "nvim-tree/nvim-tree.lua",
	},
	config = function()
		require("nvim_aider").setup({
			-- Theme colors based on your color scheme
			theme = {
				user_input_color = "#9CD57B", -- green
				tool_output_color = "#78CEE9", -- blue
				tool_error_color = "#F76C7C", -- red
				tool_warning_color = "#E3D367", -- yellow
				assistant_output_color = "#BAA0F8", -- purple
				completion_menu_color = "#E1E2E3", -- fg
				completion_menu_bg_color = "#313B42", -- bg1
				completion_menu_current_color = "#1C1E1F", -- black
				completion_menu_current_bg_color = "#78CEE9", -- blue
			},
			aider_cmd = "edctl aider --",
			-- Default args for aider
			args = {
				"--no-auto-commits",
				"--pretty",
				"--stream",
			},
		})
	end,
}
