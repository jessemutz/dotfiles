return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  opts = {
    theme = "catppuccin",
    -- ... the rest of your lualine config
    sections = {
      lualine_x = {
        {
          require("noice").api.statusline.mode.get,
          cond = require("noice").api.statusline.mode.has,
          color = { fg = "#ff851b" },
        },
        'encoding',
        'fileformat',
        'filetype'
      },
    },
  },
}
