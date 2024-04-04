return {
  "ThePrimeagen/vim-be-good", -- vim game

  -- Use multi line editing with visual mode
  "mg979/vim-visual-multi",
  "cakebaker/scss-syntax.vim",

  -- VIM + TMUX navigation
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<CR>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<CR>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<CR>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<CR>" },
    },
  },
  -- vim.keymap.set("n", "C-h", "TmuxNavigateLeft"),
  -- vim.keymap.set("n", "C-j", "TmuxNavigateDown"),
  -- vim.keymap.set("n", "C-k", "TmuxNavigateUp"),
  -- vim.keymap.set("n", "C-l", "TmuxNavigateRight"),
}
