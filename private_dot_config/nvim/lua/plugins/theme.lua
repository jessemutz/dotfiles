return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        dim_inactive = {
          enabled = true,
          shade = "dark",
          percentage = 0.5,
        },
      })
    end,
  },

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

  -- {
  --   'ellisonleao/gruvbox.nvim',
  --   name = 'gruvbox',
  --   lazy = false,
  -- },

  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
