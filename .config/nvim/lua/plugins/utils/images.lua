require("image").setup({
    integrations = {
        markdown = {
            -- only_render_image_at_cursor = true,         -- defaults to false
            -- only_render_image_at_cursor_mode = "inline", -- "popup" or "inline", defaults to "popup"
        }
    },
    tmux_show_only_in_active_window = true, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
})
