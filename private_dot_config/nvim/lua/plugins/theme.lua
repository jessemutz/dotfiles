return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = true,
  },

  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    lazy = false,
  },

  {
    "folke/tokyonight.nvim",
    name = "colors_tokyonight",
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
      colorscheme = { "rose-pine" },
    },
  },
}
