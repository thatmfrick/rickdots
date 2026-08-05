require("config.keymaps")
require("config.options")
require("config.plugins")

--ui
require("plugins.ui.colorscheme")
require("neoscroll").setup()
require("plugins.ui.noice")
-- require('plugins.ui.smear_cursor')
require("plugins.ui.indent_blanklines")
require("plugins.ui.mini_indentscope")
require("plugins.ui.ministarter")
require("plugins.ui.cokeline")
require("plugins.ui.lualine")

--code
require("colorizer").setup()
require("plugins.code.autopairs")
require("plugins.code.treesitter")
require("plugins.code.nvim_cmp")
require("plugins.code.diagnostic")
require("plugins.code.lsp")

--utils
require("plugins.utils.nvim_tree")
require("plugins.utils.live_server")
require("plugins.utils.images")
require("plugins.utils.telescope")

-- cd ~/.local/share/nvim/site/pack/core/opt/telescope-fzf-native.nvim && make
