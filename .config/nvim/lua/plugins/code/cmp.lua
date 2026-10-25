local cmp = require('blink.cmp')
cmp.build():pwait()

cmp.setup {
    sources = {
        -- NOTE: no need if you don't have custom markdown stuff
        per_filetype = {
            markdown = {
                "lsp",                   -- NOTE: explicitly enable lsp
                inherit_defaults = true, -- NOTE: if your defaults include lsp
                -- "dictionary",
            },
        },
    },
}
