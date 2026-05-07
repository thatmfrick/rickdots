require("live_server").setup({
        default_port = 8000,
        live_reload = { enabled = true, inject_script = true, debounce = 120, css_inject = true },
        directory_listing = { enabled = true, show_hidden = false },
})

local keymap = vim.keymap
keymap.set("n", "<leader>ls", "<cmd>LiveServerStart<cr>", { desc = "Start (pick path & port)" })
keymap.set("n", "<leader>lo", "<cmd>LiveServerOpen<cr>", { desc = "Open existing port in browser" })
keymap.set("n", "<leader>lr", "<cmd>LiveServerReload<cr>", { desc = "Force reload (pick port)" })
keymap.set("n", "<leader>lt", "<cmd>LiveServerToggleLive<cr>", { desc = "Toggle live-reload (pick port)" })
keymap.set("n", "<leader>li", "<cmd>LiveServerStatus<cr>", { desc = "Show server status" })
keymap.set("n", "<leader>lS", "<cmd>LiveServerStop<cr>", { desc = "Stop one (pick port)" })
keymap.set("n", "<leader>lA", "<cmd>LiveServerStopAll<cr>", { desc = "Stop all" })
