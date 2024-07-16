return {
  -- Markdown Preview
  -- For some reason this wasn't showing up in Lazy loader
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    keys = {
      {
        "<leader>cp",
        ft = "markdown",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown [P]review",
      },
    },
    config = function()
      vim.cmd([[do FileType]])
    end,
  },
  {
    "OXY2DEV/markview.nvim",
    ft = "markdown",

    dependencies = {
      -- You may not need this if you don't lazy load
      -- Or if the parsers are in your $RUNTIMEPATH
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    init = function()
      require("markview").setup({
        modes = { "n", "v", "i" },
        list_items = {
          enable = false,
          marker_dot = {},
        },
        checkboxes = {
          enable = false,
        },
      })
    end,
  },
}
