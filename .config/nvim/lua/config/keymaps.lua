vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<esc>", opts)

keymap.set("n", "<leader>r", "<cmd>source %<cr>", { desc = "source current file" })

vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select entire buffer", noremap = true })

vim.keymap.set("n", "<leader>L", function()
	vim.pack.update(nil, { force = true })
end, { desc = "Update plugins" })

vim.keymap.set("n", "<leader>M", "<cmd>Mason<cr>", { desc = "Open Mason" })

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})
