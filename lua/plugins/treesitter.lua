return {
    "nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            --ensure_installed = { "html", "lua", "vim", "vimdoc" }, -- see other on https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
            auto_install = true,
            highlight = { enable = true },
            ident = { enable = true },
            autotag = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-s>",
                    node_incremental = "<C-s>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end,
}
