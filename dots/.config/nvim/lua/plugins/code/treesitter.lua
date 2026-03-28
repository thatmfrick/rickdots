return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		-- We use a pcall (protected call) to prevent Neovim from
		-- crashing if the compiled library is briefly missing.
		local status, configs = pcall(require, "nvim-treesitter.configs")
		if not status then
			return
		end

		configs.setup({
			-- ensures these are always installed on every machine
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"yaml",
				"markdown",
				"markdown_inline",
				"bash",
				"c",
			},

			-- automatically install missing parsers when you open a new file type
			auto_install = true,

			highlight = {
				enable = true, -- this is the most important part!
				additional_vim_regex_highlighting = false,
			},

			indent = {
				enable = true,
			},
		})
	end,
}
