return {
  -- Glow Markdown Preview
  "ellisonleao/glow.nvim",
  enabled = false,
  init = function()
    require("glow").setup({
      border = "rounded",
    })
  end,
  cmd = "Glow",
}
