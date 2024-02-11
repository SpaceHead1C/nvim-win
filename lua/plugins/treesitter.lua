return {
    "nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = { "c", "go", "java", "javascript", "html", "lua", "proto", "vim", "vimdoc", "query" },
            highlight = { enable = true },
            ident = { enable = true },
        })
    end,
}
