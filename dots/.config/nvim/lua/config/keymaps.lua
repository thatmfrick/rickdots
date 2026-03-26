vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
keymap.set("i", "jk", "<esc>", opts)
keymap.set("n", "<leader>c", ":nohlsearch<cr>", opts)
keymap.set("n", "<leader>r", "<cmd>source %<cr>", { desc = "source current file" })
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select entire buffer", noremap = true })
vim.keymap.set("n", "p", "p=`]", { desc = "Paste and auto-indent" })
vim.keymap.set("n", "P", "P=`]", { desc = "Paste before and auto-indent" })
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Open Lazy.nvim" })
keymap.set("n", "<leader>b", "<Lazy>(cokeline-focus-next)", { desc = "Focus next buffer" })
