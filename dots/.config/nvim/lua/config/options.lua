vim.opt.number = true
vim.o.mouse = "a" -- allows mouse in all modes
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.showmode = false
vim.opt.ruler = false
vim.opt.showcmd = false
vim.opt.cmdheight = 0
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "text", "gitcommit", "sh", "bash" },
	callback = function()
		vim.opt_local.breakindentopt = "shift:2"
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.json",
	callback = function()
		vim.cmd([[%!jq .]])
	end,
})
