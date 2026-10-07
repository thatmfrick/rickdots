require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
    ensure_installed = {
        "lua_ls",
        "shellcheck",
        "awk-language-server",
        "eslint_d",
        "shfmt",
        "hadolint",
        "prettier",
        "html-lsp",
        "bash-language-server",
        "pyright",
        "ast-grep",
    },

    auto_update = true,
    run_on_start = true,
    start_delay = 3000,
})

vim.keymap.set("n", "<leader>M", "<cmd>Mason<cr>", { desc = "Open Mason" })
