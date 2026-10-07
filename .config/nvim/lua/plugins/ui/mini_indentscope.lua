require("mini.indentscope").setup({
    symbol = "⏽",
    options = { try_as_border = true },
})

vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#949fb5" })

-- Usa l'evento FileType per disattivarlo in modo immediato e sicuro
vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "help",
        "alpha",
        "snacks_dashboard",
        "NvimTree",
        "NeoTree",
        "Trouble",
        "trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
    },
    callback = function(args)
        vim.b[args.buf].miniindentscope_disable = true
    end,
})
