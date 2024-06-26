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
}

