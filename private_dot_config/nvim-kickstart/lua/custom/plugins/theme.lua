return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
  },

  {
    'EdenEast/nightfox.nvim',
    name = 'nightfox',
    lazy = false,
  },

  {
    'NLKNguyen/papercolor-theme',
    name = 'PaperColor',
    lazy = false,
  },

  {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    lazy = false,
  },

  {
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    lazy = false,
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    lazy = false,
  },
  -- Set colorscheme to rose-pine
  -- Though I do like Tokyo-night a lot.
  -- {
  --   'LazyVim/LazyVim',
  --   opts = {
  --     -- colorscheme = { "rose-pine-main" },
  --     colorscheme = { 'catppuccin-mocha' },
  --   },
  --   require('catppuccin').setup {
  --     flavour = 'mocha',
  --     transparent_background = true,
  --     dim_inactive = {
  --       enabled = false,
  --       shade = 'dark',
  --       percentage = 0.5,
  --     },
  --   },
  -- },
}
