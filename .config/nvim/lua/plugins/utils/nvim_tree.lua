vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    view = {
        width = 35,
        relativenumber = true,
        float = {
            enable = true,
            quit_on_focus_loss = true,
            open_win_config = function()
                local WIDTH_RATIO = 0.6 -- 60% of screen width
                local HEIGHT_RATIO = 0.8 -- 80% of screen height

                local screen_w = vim.opt.columns:get()
                local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()

                local window_w = math.floor(screen_w * WIDTH_RATIO)
                local window_h = math.floor(screen_h * HEIGHT_RATIO)

                local center_x = (screen_w - window_w) / 2
                local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()

                return {
                    relative = "editor",
                    border = "rounded",
                    width = window_w,
                    height = window_h,
                    row = center_y,
                    col = center_x,
                }
            end,
        },
    },
    filters = {
        custom = { ".DS_Store" },
    },
    git = {
        ignore = false,
    },
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
    renderer = {
        indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
                corner = "└",
                edge = "┆",
                item = "├",
                none = " ",
            },
        },
        icons = {
            git_placement = "before",
            padding = " ",
            symlink_arrow = " -> ",
            glyphs = {
                default = "",
                symlink = "",
                bookmark = "",
                -- folder = {
                --     arrow_closed = "",
                --     arrow_open = "",
                --     default = "",
                --     open = "",
                --     empty = "",
                --     empty_open = "",
                --     symlink = "",
                --     symlink_open = "",
                -- },
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "",
                    ignored = "◌",
                },
            },
        },
    },
})

local keymap = vim.keymap
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
