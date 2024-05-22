return {
  -- Disable Headlines backgrounds on md files
  { "lukas-reineke/headlines.nvim", enabled = false },
  "ThePrimeagen/vim-be-good", -- vim game
  "mg979/vim-visual-multi", -- Use multi line editing with visual mode
  "cakebaker/scss-syntax.vim", -- SCSS syntax highlighting
  "tpope/vim-abolish", -- better find and replace
  "mattn/emmet-vim", -- html emmet
  {
    "brenoprata10/nvim-highlight-colors",
    init = function()
      require("nvim-highlight-colors").setup({

        ---Render style
        ---@usage 'background'|'foreground'|'virtual'
        render = "virtual",

        ---Set virtual symbol (requires render to be set to 'virtual')
        virtual_symbol = "",
        ---Highlight named colors, e.g. 'green'
        enable_named_colors = false,
        ---Highlight tailwind colors, e.g. 'bg-blue-500'
        enable_tailwind = true,
      })
    end,
  },
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
}
