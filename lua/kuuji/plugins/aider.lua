return {
  "joshuavial/aider.nvim",
  opts = {
    auto_manage_context = true, -- automatically manage buffer context
    default_bindings = true,    -- use default <leader>A keybindings
    debug = false,              -- enable debug logging
  },
  config = function(_, opts)
    require("aider").setup(opts)
  end,
}
