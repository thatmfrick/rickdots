require("mini.icons").setup({
        file = {
                [".keep"] = { glyph = "󰊢", hl = "MiniIconsGrey" },
                ["devcontainer.json"] = { glyph = "", hl = "MiniIconsAzure" },
        },
        filetype = {
                dotenv = { glyph = "", hl = "MiniIconsYellow" },
        },
})

-- make mini.icons act as nvim-web-devicons
package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
end
