return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		lualine.setup({
			options = {
				theme = "kanagawa", -- ← Add this line
				component_separators = "",
				section_separators = "",
			},
			sections = {
				lualine_a = { { "mode", fmt = string.upper } },
				lualine_b = { "filename" },
				lualine_c = {},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						-- color = { fg = "#ff9e64" },
					},
					{ "encoding" },
					{ "filetype" },
					{ "location" },
					{
						function()
							return os.date("%H:%M")
						end,
					},
				},
				lualine_y = {},
				lualine_z = {
					{
						padding = { left = 3 },
					},
				},
			},
		})
	end,
}
