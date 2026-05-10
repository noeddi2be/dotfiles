return {
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_background = "hard" -- "hard", "medium", or "soft"
      vim.g.everforest_enable_italic = true
      vim.cmd.colorscheme("everforest")
    end,
  },
  -- Tell LazyVim to use this colorscheme
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "everforest" },
  },
}
