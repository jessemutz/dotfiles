return {
  { -- Useful plugin to show you pending keybinds.
    "folke/which-key.nvim",
    -- Document existing key chains
    require("which-key").register({
      ["<leader>o"] = { name = "+obsidian", _ = "which_key_ignore" },
    }),
  },
}
