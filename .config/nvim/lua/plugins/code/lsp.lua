require("mason").setup({
        ui = {
                icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                },
        },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- bash
vim.lsp.config('bashls', {
        cmd = { 'bash-language-server', 'start' },
        filetypes = { 'sh', 'bash' },
        root_markers = { '.git' },
        capabilities = capabilities,
})
vim.lsp.enable('bashls')

-- lua
vim.lsp.config('lua_ls', {
        cmd = { 'lua-language-server' },
        filetypes = { 'lua' },
        root_markers = { '.luarc.json', '.git' },
        capabilities = capabilities,
        settings = {
                Lua = { diagnostics = { globals = { 'vim' } } },
        },
})
vim.lsp.enable('lua_ls')

-- python
vim.lsp.config('pyright', {
        cmd = { 'pyright-langserver', '--stdio' },
        filetypes = { 'python' },
        root_markers = { 'pyproject.toml', 'setup.py', '.git' },
        capabilities = capabilities,
})
vim.lsp.enable('pyright')

-- typescript/javascript
vim.lsp.config('ts_ls', {
        cmd = { 'typescript-language-server', '--stdio' },
        filetypes = { 'javascript', 'typescript', 'svelte' },
        root_markers = { 'package.json', '.git' },
        capabilities = capabilities,
})
vim.lsp.enable('ts_ls')

-- css
vim.lsp.config('css_lsp', {
        cmd = { 'vscode-css-language-server', '--stdio' },
        filetypes = { 'css', 'scss', 'less' },
        root_markers = { 'package.json', '.git' },
        capabilities = capabilities,
})
vim.lsp.enable('css_lsp')

-- html
vim.lsp.config('html', {
        cmd = { 'vscode-html-language-server', '--stdio' },
        filetypes = { 'html' },
        root_markers = { 'package.json', '.git' },
        capabilities = capabilities,
})
vim.lsp.enable('html')

-- svelte
vim.lsp.config('svelte', {
        cmd = { 'svelteserver', '--stdio' },
        filetypes = { 'svelte' },
        root_markers = { 'package.json', '.git' },
        capabilities = capabilities,
})
vim.lsp.enable('svelte')
