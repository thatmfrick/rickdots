local starter = require("mini.starter")

local ascii = [[


                 ▝
▗▗▖  ▄▖  ▄▖ ▗ ▗ ▗▄  ▗▄▄
▐▘▐ ▐▘▐ ▐▘▜ ▝▖▞  ▐  ▐▐▐
▐ ▐ ▐▀▀ ▐ ▐  ▙▌  ▐  ▐▐▐
▐ ▐ ▝▙▞ ▝▙▛  ▐  ▗▟▄ ▐▐▐


]]

starter.setup({
	evaluate_single = true,

	header = function()
		return ascii .. os.date("%d/%m/%y")
	end,

	items = {
		starter.sections.recent_files(7, false, false),
		{
			{ name = "New file", action = "enew", section = "Actions" },
			{ name = "Find file", action = "Telescope find_files", section = "Actions" },
			{ name = "Live grep", action = "Telescope live_grep", section = "Actions" },
			{
				name = "Update Plugins",
				action = function()
					vim.pack.update()
				end,
				section = "Actions",
			},
			{ name = "Mason", action = "Mason", section = "Actions" },
			{ name = "Quit", action = "qall", section = "Actions" },
		},
	},

	content_hooks = {
		-- starter.gen_hook.adding_bullet("󰫹 "),
		starter.gen_hook.indexing("all", { "Actions" }),
		starter.gen_hook.aligning("center", "center"),
	},

	footer = function()
		local v = vim.version()
		return string.format("v%d.%d.%d", v.major, v.minor, v.patch)
	end,
})

vim.api.nvim_create_autocmd({ "VimResized", "WinResized" }, {
	callback = function()
		if vim.bo.filetype == "ministarter" then
			pcall(starter.refresh)
		end
	end,
})
