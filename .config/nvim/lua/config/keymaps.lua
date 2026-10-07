vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<esc>", opts)
keymap.set("n", "<leader>r", "<cmd>source %<cr>", { desc = "Source current file" })
keymap.set("n", "<leader>a", "ggVG", { desc = "Select entire buffer", noremap = true })

local function split_and_pick(cmd)
    vim.cmd(cmd)
    require("telescope.builtin").buffers()
end

keymap.set("n", "sv", function() split_and_pick("vsplit") end, opts)
keymap.set("n", "sh", function() split_and_pick("split") end, opts)
keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close pane' })

keymap.set("n", "<leader>L", function()
    vim.pack.update(nil, { force = true })
end, { desc = "Update plugins" })

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format({ async = false })
    end,
})

keymap.set("n", "<leader>e", "<Cmd>Neotree<CR>")
