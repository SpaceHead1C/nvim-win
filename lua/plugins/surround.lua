return {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    version = "*",
    config = true,

    -- ys = to surround mode
    -- iw = select word
    -- ds = select word for delete surrounding character (type it next)
    -- cs<char> = select word for replace character to other (type it next)
}
