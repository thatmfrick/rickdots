-- Default options:
require("kanagawa").setup({
	transparent = true, -- do not set background color
	dimInactive = true, -- dim inactive window `:h hl-NormalNC`
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa-dragon")
