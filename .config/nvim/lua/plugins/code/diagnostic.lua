-- disable default virtual_text since tiny-inline replaces it
vim.diagnostic.config({ virtual_text = false })

require("tiny-inline-diagnostic").setup({
        preset = "modern", -- "classic", "minimal", "powerline", "ghost", "simple", "nonerdfont", "amongus"
        signs = {
                left = "",
                right = "",
                diag = "●",
                arrow = "    ",
                up_arrow = "    ",
                vertical = " │",
                vertical_end = " └",
        },
        blend = {
                factor = 0.27,
        },
        options = {
                show_source = true,
                throttle = 20,
                softwrap = 15,
                multilines = {
                        enabled = true,
                        always_show = false,
                },
                show_all_diags_on_cursorline = true,
                enable_on_insert = false,
        },
})
