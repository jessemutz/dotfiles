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
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<CR>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<CR>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<CR>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<CR>" },
    },
  },

  -- Use multi line editing with visual mode
  "mg979/vim-visual-multi",

  -- Better find and replace
  "tpope/vim-abolish",

  -- HTML Emmet
  "mattn/emmet-vim",

  -- Disable Headlines backgrounds on md files
  { "lukas-reineke/headlines.nvim", enabled = false },

  -- Color code inicator icon
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

  -- Highlight todo, notes, etc in comments
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    signs = true, -- show icons in the signs column
  },

  -- Color Tint
  -- Changes the shade of non-active buffers
  "levouh/tint.nvim",
  lazy = false,

  config = function()
    require("tint").setup({
      tint = -95, -- Darken colors, use a positive value to brighten
      saturation = 0.1, -- Saturation to preserve
      transforms = require("tint").transforms.SATURATE_TINT, -- Showing default behavior, but value here can be predefined set of transforms
      tint_background_colors = false, -- Tint background portions of highlight groups
      highlight_ignore_patterns = { "WinSeparator", "Status.*" }, -- Highlight group patterns to ignore, see `string.find`

      -- window_ignore_function = function(winid)
      --   local bufid = vim.api.nvim_win_get_buf(winid)
      --   local buftype = vim.api.nvim_buf_get_option(bufid, "buftype")
      --   local floating = vim.api.nvim_win_get_config(winid).relative ~= ""
      --
      --   -- Do not tint `terminal` or floating windows, tint everything else
      --   return buftype == "terminal" or floating
      -- end,
    })
    -- Set backgrounds to transparent
    vim.cmd.highlight({ "Normal", "guibg=none ctermbg=none" })
    vim.cmd.highlight({ "NormalNC", "guibg=none ctermbg=none" })
  end,
}

-- todo-comments.nvim examples
-- TODO: = { icon = " ", color = "info" },
-- HACK: = { icon = " ", color = "warning" },
-- WARN: = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
-- PERF: = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
-- NOTE: = { icon = " ", color = "hint", alt = { "INFO" } },
-- TEST: = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
-- FIX:  = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
