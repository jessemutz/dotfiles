-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- VIM + TMUX navigation
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<CR>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<CR>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<CR>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<CR>' },
    },
  },

  -- Use multi line editing with visual mode
  'mg979/vim-visual-multi',

  -- Better find and replace
  'tpope/vim-abolish',

  -- HTML Emmet
  'mattn/emmet-vim',

  -- Buffer Tabs
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    vim.opt.termguicolors == true,
    opts = {
      indicator = {
        icon = '▎', -- this should be omitted if indicator style is not 'icon'
        style = 'icon' | 'underline' | 'none',
      },
    },
  },

  -- Highlight Colors
  {
    'brenoprata10/nvim-highlight-colors',
    init = function()
      require('nvim-highlight-colors').setup {

        ---Render style
        ---@usage 'background'|'foreground'|'virtual'
        render = 'virtual',

        ---Set virtual symbol (requires render to be set to 'virtual')
        virtual_symbol = '',
        ---Highlight named colors, e.g. 'green'
        enable_named_colors = false,
        ---Highlight tailwind colors, e.g. 'bg-blue-500'
        enable_tailwind = true,
      }
    end,
  },
}

-- Comments examples
-- TODO: = { icon = " ", color = "info" },
-- HACK: = { icon = " ", color = "warning" },
-- WARN: = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
-- PERF: = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
-- NOTE: = { icon = " ", color = "hint", alt = { "INFO" } },
-- TEST: = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
-- FIX:  = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
