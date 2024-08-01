return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
                -- other look in BUILTINS.md: https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md
				--null_ls.builtins.diagnostics.golangci_lint,
				null_ls.builtins.completion.spell,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>gf", vim.lsp.buf.format, {})
	end,
}
