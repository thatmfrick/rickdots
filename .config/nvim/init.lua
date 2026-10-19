require("config.options")
require("config.autocmd")
require("config.keymaps")
require("config.plugins")

--ui
require("fidget").setup()
require("plugins.ui.colorscheme")
require("neoscroll").setup()
require("plugins.ui.noice")
require("plugins.ui.indent_blanklines")
require("plugins.ui.mini_indentscope")
require("plugins.ui.cokeline")
require("plugins.ui.lualine")
require("plugins.ui.mini_starter")
require("modicator").setup()
require("mini.icons").setup()
MiniIcons.mock_nvim_web_devicons()

--code
require("colorizer").setup()
require("plugins.code.autopairs")
require("plugins.code.diagnostic")
require("plugins.code.treesitter")
require("render-markdown").setup()
require("plugins.code.treesj")
require("hlslens").setup()

--cmp
require("plugins.code.cmp")

--lsp
require("plugins.code.lsp")

-- utils
require("plugins.utils.nvim_tree")
require("plugins.utils.live_server")
require("plugins.utils.images")
require("hlslens").setup()
require("plugins.utils.telescope")
require 'hex'.setup()

-- tree-sitter-cli -> install with your distro package-manager
