-- Nice dashboard
return {
  "nvimdev/dashboard-nvim",
  lazy = false, -- As https://github.com/nvimdev/dashboard-nvim/pull/450, dashboard-nvim shouldn't be lazy-loaded to properly handle stdin.
  opts = function()
    local logo = [[
       ██╗    ██╗   ██╗███████╗███████╗                            
       ██║    ██║   ██║██╔════╝██╔════╝                            
       ██║    ██║   ██║███████╗█████╗                              
       ██║    ██║   ██║╚════██║██╔══╝                              
       ██║    ╚██████╔╝███████║███████╗                            
       ╚═╝     ╚═════╝ ╚══════╝╚══════╝                            
       
       ██╗   ██╗██╗███╗   ███╗       ██████╗ ████████╗██╗    ██╗   
       ██║   ██║██║████╗ ████║       ██╔══██╗╚══██╔══╝██║    ██║   
       ██║   ██║██║██╔████╔██║       ██████╔╝   ██║   ██║ █╗ ██║   
       ╚██╗ ██╔╝██║██║╚██╔╝██║       ██╔══██╗   ██║   ██║███╗██║   
        ╚████╔╝ ██║██║ ╚═╝ ██║▄█╗    ██████╔╝   ██║   ╚███╔███╔╝██╗
         ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝    ╚═════╝    ╚═╝    ╚══╝╚══╝ ╚═╝
    ]]
    logo = string.rep("\n", 8) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = 'Telescope find_files',                           desc = " Find File",       icon = " ", key = "f" },
          { action = 'Telescope oldfiles only_cwd=true',               desc = " Recent Files",    icon = " ", key = "r" },
          { action = 'Telescope live_grep',                            desc = " Find Text",       icon = " ", key = "g" },
          { action = "Lazy",                                           desc = " Lazy",            icon = "󰒲 ", key = "l" },
          { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
          -- { action = 'lua LazyVim.pick.config_files()()',              desc = " Config",          icon = " ", key = "c" },
          -- { action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
          -- { action = 'lua require("persistence").load()',              desc = " Restore Session", icon = " ", key = "s" },
          -- { action = "LazyExtras",                                     desc = " Lazy Extras",     icon = " ", key = "x" },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    return opts
  end,
}
