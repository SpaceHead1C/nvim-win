return {
	"folke/which-key.nvim",
	event = "VeryLazy", -- plugin not necessary for the initial UI
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 1000
	end,
	opts = {
		--
	},
}
