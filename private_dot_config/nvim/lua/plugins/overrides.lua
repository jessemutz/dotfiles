local HOME = os.getenv("HOME")
return {
  -- Disable Markdown Warnings
  --
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", HOME .. "/.config/markdownlint-cli2.yaml", "--" },
        },
      },
    },
  },

  -- Markdown preview - update icons
  -- https://github.com/MeanderingProgrammer/render-markdown.nvim/wiki
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      heading = {
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        above = "▄",
        below = "▀",
        sign = true,
        border = true,
      },
      bullet = {
        icons = { "", "", "–", "•" },
      },
      code = {
        render_modes = true,
        language_pad = 2,
        highlight = "RenderMarkdownCode",
      },
      checkbox = {
        enabled = true,
      },
      highlight_languages = {
        ["ad-info"] = "markdown",
      },
      filetypes = {
        ["ad-info"] = "markdown",
      },
      languages = {
        ["ad-info"] = {
          icon = "ℹ️",
          icon_color = "#2563EB",
          treesitter = "markdown",
        },
      },
      code_blocks = {
        ["ad-info"] = {
          icon = "ℹ️", -- Custom icon for ad-info blocks
          icon_color = "#2563EB", -- Blue color for the icon (you can change this)
          language = "markdown", -- Treat the content as markdown for syntax highlighting
        },
      },
    },
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      checkbox = {
        enabled = true,
        custom = {
          deferred = {
            raw = "[>]",
            rendered = "󰁔",
            highlight = "RenderMarkdownTodo",
          },
        },
      },
    },
  },

  {
    "catppuccin/nvim",
    opts = {
      color_overrides = {
        mocha = {
          base = "#000000",
          crust = "#161623",
          mantle = "#0B0B12",
        },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
