return {
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
        -- virtual_symbol_position = "eow",
        ---Highlight named colors, e.g. 'green'
        enable_named_colors = false,
        ---Highlight tailwind colors, e.g. 'bg-blue-500'
        enable_tailwind = true,
        exclude_filetypes = { "astro" },
      })
    end,
  },
}
