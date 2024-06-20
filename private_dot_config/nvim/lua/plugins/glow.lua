return {
  -- Glow Markdown Preview
  {
    "ellisonleao/glow.nvim",
    init = function()
      require("glow").setup({
        border = "rounded",
      })
    end,
    cmd = "Glow",
  },
}
