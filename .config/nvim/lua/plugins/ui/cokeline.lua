require("cokeline").setup({})

local opts = { silent = true }
vim.keymap.set("n", "<leader>n", "<Plug>(cokeline-focus-next)", opts)
vim.keymap.set("n", "<leader>b", "<Plug>(cokeline-focus-prev)", opts)
