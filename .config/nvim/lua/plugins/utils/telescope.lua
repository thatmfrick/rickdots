local telescope = require("telescope")
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")
local code_action = require("tiny-code-action")

telescope.setup({
    defaults = {
        path_display = { "truncate", "filename_first" },
        mappings = {
            i = {
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
            n = {
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
        },
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        },
        frecency = {
            db_safe_mode = false,
            db_validate_threshold = 0,
            show_filter_column = false,
        },
        ["ui-select"] = require("telescope.themes").get_dropdown({}),
    },
})

telescope.load_extension("fzf")
telescope.load_extension("ui-select")
telescope.load_extension("frecency")

code_action.setup({
    picker = {
        "telescope",
        opts = {
            layout_strategy = "horizontal",
        },
    },
})

local function project_root()
    return vim.fs.root(0, { ".git" }) or vim.fs.root(vim.fn.getcwd(), { ".git" }) or vim.fn.getcwd()
end

local keymap = vim.keymap
keymap.set("n", "<leader>fF",
    function() telescope.extensions.frecency.frecency({ cwd = project_root(), workspace = "CWD", hidden = true }) end,
    { desc = "Find files" })
keymap.set("n", "<leader>ff", function() builtin.find_files({ cwd = project_root() }) end,
    { desc = "Find all files" })
keymap.set("n", "<leader>fg", function()
    builtin.live_grep({ cwd = project_root() })
end, { desc = "Live grep" })
keymap.set("n", "<leader>fu", function()
    builtin.git_status()
end, { desc = "Search unstaged" })

keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Search diagnostics" })
keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Search Help" })
keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Search Keymaps" })
