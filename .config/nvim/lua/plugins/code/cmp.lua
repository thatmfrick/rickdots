local cmp = require('blink.cmp')
cmp.build():pwait()

cmp.setup {
    appearance = {
        nerd_font_variant = "mono",
    },
    signature = { enabled = true },

    keymap = { preset = "enter" },

    sources = {
        default = { "lsp", "path", "snippets", "buffer" },

        per_filetype = {
            markdown = { "lsp", "path", "snippets" },
        },
    },

}
