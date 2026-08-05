vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	view = {
		width = 35,
		relativenumber = true,
	},
	filters = {
		custom = { ".DS_Store" },
	},
	git = {
		ignore = false,
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	renderer = {
		indent_markers = {
			enable = true,
			inline_arrows = true,
			icons = {
				corner = "└",
				edge = "┆",
				item = "├",
				none = " ",
			},
		},
		icons = {
			git_placement = "before",
			padding = " ",
			symlink_arrow = " -> ",
			glyphs = {
				default = "",
				symlink = "",
				bookmark = "",
				-- folder = {
				--     arrow_closed = "",
				--     arrow_open = "",
				--     default = "",
				--     open = "",
				--     empty = "",
				--     empty_open = "",
				--     symlink = "",
				--     symlink_open = "",
				-- },
				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
})

local keymap = vim.keymap
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
