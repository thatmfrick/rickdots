local status, configs = pcall(require, "nvim-treesitter.configs")
if not status then
        return
end

configs.setup({
        ensure_installed = {
                "lua",
                "vim",
                "vimdoc",
                "yaml",
                "markdown",
                "markdown_inline",
                "bash",
                "c",
        },
        auto_install = true,
        highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
        },
        indent = {
                enable = true,
        },
})
