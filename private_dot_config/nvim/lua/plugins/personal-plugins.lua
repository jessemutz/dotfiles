return {
  "ThePrimeagen/vim-be-good", -- vim game
  {
    "folke/todo-comments.nvim", -- Highlight todo, notes, etc in comments
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      signs = true, -- show icons in the signs column
    },
  },

  -- Use multi line editing with visual mode
  "mg979/vim-visual-multi",
  "cakebaker/scss-syntax.vim",
}
-- Comments examples

-- TODO: = { icon = " ", color = "info" },
-- HACK: = { icon = " ", color = "warning" },
-- WARN: = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
-- PERF: = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
-- NOTE: = { icon = " ", color = "hint", alt = { "INFO" } },
-- TEST: = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
-- FIX:  = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
