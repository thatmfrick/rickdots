require("mini.indentscope").setup({
        symbol = "❙",
        options = { try_as_border = true },
})

vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#949fb5" })

vim.api.nvim_create_autocmd("BufWinEnter", {
        callback = function(args)
                vim.defer_fn(function()
                        local ft = vim.bo[args.buf].filetype
                        if vim.tbl_contains({
                                    "help", "alpha", "snacks_dashboard", "NvimTree",
                                    "Trouble", "trouble", "lazy", "mason", "notify",
                                    "toggleterm", "lazyterm",
                            }, ft) then
                                vim.b[args.buf].miniindentscope_disable = true
                        end
                end, 50)
        end,
})
