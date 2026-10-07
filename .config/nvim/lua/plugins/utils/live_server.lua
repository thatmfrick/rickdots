require("kitehost").setup({
    default_port = 8000,
    live_reload = { enabled = true, inject_script = true, debounce = 120, css_inject = true },
    directory_listing = { enabled = true, show_hidden = false },
})

local keymap = vim.keymap
keymap.set("n", "<leader>ls", "<cmd>LiveServerStart<cr>", { desc = "LiveServer: Start (pick path & port)" })
keymap.set("n", "<leader>lo", "<cmd>LiveServerOpen<cr>", { desc = "LiveServer: Open existing port in browser" })
keymap.set("n", "<leader>lr", "<cmd>LiveServerReload<cr>", { desc = "LiveServer: Force reload (pick port)" })
keymap.set("n", "<leader>lt", "<cmd>LiveServerToggleLive<cr>", { desc = "LiveServer: Toggle live-reload (pick port)" })
keymap.set("n", "<leader>li", "<cmd>LiveServerStatus<cr>", { desc = "LiveServer: Show server status" })
keymap.set("n", "<leader>lS", "<cmd>LiveServerStop<cr>", { desc = "LiveServer: Stop one (pick port)" })
keymap.set("n", "<leader>lA", "<cmd>LiveServerStopAll<cr>", { desc = "LiveServer: Stop all" })
