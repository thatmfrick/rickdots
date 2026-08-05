require("notify").setup({
	background_colour = "#ce7e00",
	timeout = 1000,
	render = "compact",
	fps = 240,
	stages = "fade",
	level = 2,
	top_down = true,
})

require("noice").setup({
	-- your existing config...
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
	},
})
