return {
	"rmagatti/auto-session",
	config = function()
		local auto = require("auto-session")
		auto.setup({
			auto_restore_enabled = false,
			auto_session_suppress_dirs = {},
		})

		local keymap = vim.keymap
		keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
		keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })
		keymap.set("n", "<leader>wx", "<cmd>SessionDelete<CR>", { desc = "Delete session in the currently set" })
		keymap.set("n", "<leader>wa", "<cmd>Autosession search<CR>", { desc = "Choose a session to load" })
		keymap.set("n", "<leader>wd", "<cmd>Autosession delete<CR>", { desc = "Choose a session to delete" })
	end,
}
