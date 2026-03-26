return {
  "nvim-mini/mini.indentscope",
  version = false,
  opts = {
    symbol = "│",
    options = { try_as_border = true },
  },
  init = function()
    -- Use BufWinEnter and delay check to make sure filetype is set
    vim.api.nvim_create_autocmd("BufWinEnter", {
      callback = function(args)
        vim.defer_fn(function()
          local ft = vim.bo[args.buf].filetype
          if vim.tbl_contains({
            "help",
            "alpha",
            "snacks_dashboard",
            "NvimTree",
            "Trouble",
            "trouble",
            "lazy",
            "mason",
            "notify",
            "toggleterm",
            "lazyterm",
          }, ft) then
            vim.b[args.buf].miniindentscope_disable = true
          end
        end, 50) -- slight delay to ensure filetype is applied
      end,
    })
  end,
  config = function(_, opts)
    require("mini.indentscope").setup(opts)
    vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#949fb5" })
  end,
}
