return {
  { -- Useful plugin to show you pending keybinds.
    "folke/which-key.nvim",
    -- Document existing key chains
    opts = {
      preset = "modern",
    },
    -- Add keys to which-key
    require("which-key").add({
      -- Obsidian
      { "<leader>O", group = "obsidian", icon = "" },
      -- Oil.nvim
      {
        "<leader>o",
        "<cmd>Oil<cr>",
        desc = "Oil.nvim Buffer",
        icon = "󰏇",
      },
      -- whichkey help
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    }),
  },
}
