-- Tailwind Tools
-- https://github.com/luckasRanarison/tailwind-tools.nvim?tab=readme-ov-file#installation
return {
  "luckasRanarison/tailwind-tools.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    document_color = {
      inline_symbol = "󰝤", -- only used in inline mode
    },
    conceal = {
      enabled = true,
    },
  },
}
