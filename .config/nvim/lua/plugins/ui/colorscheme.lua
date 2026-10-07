require("kanagawa").setup({
    transparent = true,  -- do not set background color
    dimInactive = false, -- dim inactive window `:h hl-NormalNC`
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none"
                }
            }
        }
    },
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa-dragon")
