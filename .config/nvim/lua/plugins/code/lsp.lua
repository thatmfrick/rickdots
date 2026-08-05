require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
	firewall = {
		enabled = true,
	},
})

require("mason-lspconfig").setup()
