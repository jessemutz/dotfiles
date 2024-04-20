vim.cmd.highlight({ "Normal", "guibg=none ctermbg=none" })
vim.cmd.highlight({ "NormalNC", "guibg=#1a1a32 guifg=#ffffaa" })
-- vim.cmd.highlight({ "NormalNC", "guibg=black ctermbg=10" })

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
  },

  {
    "EdenEast/nightfox.nvim",
    name = "nightfox",
    lazy = false,
  },

  {
    "NLKNguyen/papercolor-theme",
    name = "PaperColor",
    lazy = false,
  },

  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    lazy = false,
  },

  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
  },

  {
    "catppuccin/nvim",
    name = "colors_catppuccin",
    lazy = false,
  },
  -- Set colorscheme to rose-pine
  -- Though I do like Tokyo-night a lot.
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = { "rose-pine-main" },
    },
  },
}
