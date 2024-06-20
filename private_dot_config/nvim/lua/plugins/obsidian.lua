return {
  -- https://github.com/epwalsh/obsidian.nvim?tab=readme-ov-file#commands
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },

  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Dropbox/Apps/Obsidian/Personal Vault",
      },
    },

    ui = {
      checkboxes = {
        [" "] = { order = 1, char = "󰄱", hl_group = "ObsidianTodo" },
        ["x"] = { order = 2, char = "", hl_group = "ObsidianDone" },
        [">"] = { order = 3, char = "", hl_group = "ObsidianRightArrow" },
        ["~"] = { order = 4, char = "󰰱", hl_group = "ObsidianTilde" },
        ["!"] = { order = 5, char = "", hl_group = "ObsidianImportant" },
      },
    },

    disable_frontmatter = true,

    -- Daily Note
    daily_notes = {
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = "Daily Note Template.md",
    },
    -- Specify template directory
    templates = {
      folder = "9 Resources/Note Templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {},
    },
  },
}
