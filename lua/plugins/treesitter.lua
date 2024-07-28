return {
	"nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			--ensure_installed = { "html", "lua", "vim", "vimdoc" }, -- see other on https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
			auto_install = true,
			highlight = { enable = true },
			ident = { enable = true },
		})
	end,
}
