return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		indent = {
			char = "│", -- This is the passive indent character
			highlight = "IndentBlanklineChar",
		},
		scope = {
			enabled = false, -- disable scope drawing so it doesn't conflict with mini.indentscope
		},
	},
	config = function(_, opts)
		-- Define the highlight group BEFORE calling setup
		vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#3b3b3b", nocombine = true })

		require("ibl").setup(opts)
	end,
}
