return {
	"willothy/nvim-cokeline",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"kyazdani42/nvim-web-devicons", -- optional, for icons
	},
	config = function()
		require("cokeline").setup({
			-- your cokeline config here
		})

		-- Keymaps defined after Cokeline is loaded
		local opts = { silent = true }

		-- Focus next / prev buffer
		vim.keymap.set("n", "<leader>b", "<Plug>(cokeline-focus-next)", opts)
		vim.keymap.set("n", "<leader>B", "<Plug>(cokeline-focus-prev)", opts)

		-- Optional: switch buffers
		vim.keymap.set("n", "<leader>bn", "<Plug>(cokeline-switch-next)", opts)
		vim.keymap.set("n", "<leader>bp", "<Plug>(cokeline-switch-prev)", opts)

		vim.keymap.set("n", "<leader>bd", ":bd<CR>", opts)

		-- Optional: Pick buffer
		vim.keymap.set("n", "<leader>bpick", function()
			require("cokeline.mappings").pick("focus")
		end, opts)
	end,
}
