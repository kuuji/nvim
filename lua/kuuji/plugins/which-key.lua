return {
	{ -- Useful plugin to show you pending keybinds.
		"folke/which-key.nvim",
		event = "VimEnter", -- Sets the loading event to 'VimEnter'
		config = function() -- This is the function that runs, AFTER loading
			local wk = require("which-key")
			wk.setup()
			wk.add({
				{ "<leader>c", group = "[c]ode", desc = "Code" },
				{ "<leader>d", group = "[d]ocument", desc = "Document" },
				{ "<leader>r", group = "[r]ename", desc = "Rename" },
				{ "<leader>s", group = "[s]earch", desc = "Search" },
				{ "<leader>w", group = "[w]orkspace", desc = "Workspace" },
				{ "<leader>t", group = "[t]oggle", desc = "Toggle" },
			})
		end,
	},
}
