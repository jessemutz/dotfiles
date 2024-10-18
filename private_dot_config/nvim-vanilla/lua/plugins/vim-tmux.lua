return {
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
      { "<C-h>", "<cmd><C-U>TmuxNavigateLeft<CR>" },
      { "<C-j>", "<cmd><C-U>TmuxNavigateDown" },
      { "<C-k>", "<cmd><C-U>TmuxNavigateUp<CR>" },
      { "<C-l>", "<cmd><C-U>TmuxNavigateRight<CR>" },
      { "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<CR>" },
    },
  },
}
