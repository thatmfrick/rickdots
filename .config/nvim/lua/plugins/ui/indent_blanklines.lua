vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#665c54", nocombine = true })

require("ibl").setup({
        indent = {
                char = "❙",
                highlight = "IndentBlanklineChar",
        },
        scope = {
                enabled = false,
        },
})
