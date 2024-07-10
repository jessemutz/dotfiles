return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = { "echasnovski/mini.icons" },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  init = function()
    require("oil").setup({
      win_options = {
        wrap = true,
      },
    })
  end,
  keys = {
    {
      "<leader>o",
      "<cmd>Oil<cr>",
      desc = "Oil Buffer",
    },
  },
}
