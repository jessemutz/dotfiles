return {
  -- Disable Headlines backgrounds on md files
  { "lukas-reineke/headlines.nvim", enabled = false },

  -- Disable certain markdownlint rules
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        markdownlint = {
          args = {
            {
              "--disable",
              "MD012",
              "--",
            },
            {
              "--disable",
              "MD013",
              "--",
            },
            {
              "--disable",
              "MD022",
              "--",
            },
            {
              "whitespace",
              "false",
              "--",
            },
          },
        },
      },
    },
  },
}

