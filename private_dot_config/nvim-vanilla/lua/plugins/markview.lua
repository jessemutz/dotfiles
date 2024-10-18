
return {
  -- Markview
  -- {
  --   "OXY2DEV/markview.nvim",
  --   ft = "markdown",
  --
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --
  --   -- Settings
  --   init = function()
  --     require("markview").setup({
  --       modes = { "n", "v", "i" },
  --       block_quotes = {
  --         enable = false,
  --       },
  --       list_items = {
  --         enable = false,
  --       },
  --       checkboxes = {
  --         enable = false,
  --       },
  --     })
  --   end,
  -- },
  {
    "MeanderingProgrammer/markdown.nvim",
    main = "render-markdown",
    opts = {},
    name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons

    init = function()
      require("render-markdown").setup({
        code = {
          enabled = true,
          sign = true,
          -- Determines how code blocks & inline code are rendered:
          --  none: disables all rendering
          --  normal: adds highlight group to code blocks & inline code, adds padding to code blocks
          --  language: adds language icon to sign column if enabled and icon + name above code blocks
          --  full: normal + language
          style = "full",
          -- Amount of padding to add to the left of code blocks
          left_pad = 2,
          -- Amount of padding to add to the right of code blocks when width is 'block'
          right_pad = 4,
          -- Width of the code block background:
          --  block: width of the code block
          --  full: full width of the window
          width = "full",
          -- Determins how the top / bottom of code block are rendered:
          --  thick: use the same highlight as the code body
          --  thin: when lines are empty overlay the above & below icons
          border = "thin",
          -- Used above code blocks for thin border
          above = "▄",
          -- Used below code blocks for thin border
          below = "▀",
          -- Highlight for code blocks & inline code
          highlight = "RenderMarkdownCode",
          highlight_inline = "RenderMarkdownCodeInline",
        },
        bullet = {
          -- Turn on / off list bullet rendering
          enabled = true,
          -- Replaces '-'|'+'|'*' of 'list_item'
          -- How deeply nested the list is determines the 'level'
          -- The 'level' is used to index into the array using a cycle
          -- If the item is a 'checkbox' a conceal is used to hide the bullet instead
          icons = { "", "", " ", " " },
          -- Padding to add to the right of bullet point
          right_pad = 1,
          highlight = "RenderMarkdownBullet",
        },
        checkbox = {
          -- Turn on / off checkbox state rendering
          enabled = true,
          unchecked = {
            icon = "󰄱 ",
            highlight = "RenderMarkdownUnchecked",
          },
          checked = {
            icon = " ",
            highlight = "RenderMarkdownChecked",
          },
          -- Define custom checkbox states, more involved as they are not part of the markdown grammar
          -- As a result this requires neovim >= 0.10.0 since it relies on 'inline' extmarks
          -- Can specify as many additional states as you like following the 'todo' pattern below
          --   The key in this case 'todo' is for healthcheck and to allow users to change its values
          --   'raw': Matched against the raw text of a 'shortcut_link'
          --   'rendered': Replaces the 'raw' value when rendering
          --   'highlight': Highlight for the 'rendered' icon
          custom = {
            progress = {
              raw = "[/]",
              rendered = "󰡖 ",
              highlight = "RenderMarkdownTodo",
            },
            -- deferred = {
            --   raw = "[d]",
            --   rendered = "󰥔 ",
            --   highlight = "RenderMarkdownTodo",
            -- },
            delegated = {
              raw = "[>]",
              rendered = " ",
              highlight = "RenderMarkdownWarn",
            },
            important = {
              raw = "[!]",
              rendered = " ",
              highlight = "RenderMarkdownError",
            },
          },
        },
        heading = {
          -- Turn on / off heading icon & background rendering
          enabled = true,
          -- Turn on / off any sign column related rendering
          sign = true,
          -- Determines how the icon fills the available space:
          --  inline: underlying '#'s are concealed resulting in a left aligned icon
          --  overlay: result is left padded with spaces to hide any additional '#'
          position = "overlay",
          -- Replaces '#+' of 'atx_h._marker'
          -- The number of '#' in the heading determines the 'level'
          -- The 'level' is used to index into the array using a cycle
          icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
          -- Added to the sign column if enabled
          -- The 'level' is used to index into the array using a cycle
          signs = { "󰫎 " },
          -- Width of the heading background:
          --  block: width of the heading text
          --  full: full width of the window
          width = "full",
          -- The 'level' is used to index into the array using a clamp
          -- Highlight for the heading icon and extends through the entire line
          backgrounds = {
            "RenderMarkdownH1Bg",
            "RenderMarkdownH2Bg",
            "RenderMarkdownH3Bg",
            "RenderMarkdownH4Bg",
            "RenderMarkdownH5Bg",
            "RenderMarkdownH6Bg",
          },
          -- The 'level' is used to index into the array using a clamp
          -- Highlight for the heading and sign icons
          foregrounds = {
            "RenderMarkdownH1",
            "RenderMarkdownH2",
            "RenderMarkdownH3",
            "RenderMarkdownH4",
            "RenderMarkdownH5",
            "RenderMarkdownH6",
          },
        },
      })
    end,
  },
}
