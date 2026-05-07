local lualine = require("lualine")

lualine.setup({
        options = {
                theme = "gruvbox",
                component_separators = "",
                section_separators = "",
        },
        sections = {
                lualine_a = { { "mode", fmt = string.upper } },
                lualine_b = { "filename" },
                lualine_c = {},
                lualine_x = {
                        { "encoding" },
                        { "filetype" },
                        { "location" },
                        {
                                function()
                                        return os.date("%H:%M")
                                end,
                        },
                },
                lualine_y = {},
                lualine_z = {
                        {
                                padding = { left = 3 },
                        },
                },
        },
})
