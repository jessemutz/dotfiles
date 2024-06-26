-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- vim.cmd.highlight({ "Normal", "guibg=none ctermbg=none" })
-- vim.cmd.highlight({ "NormalNC", "guibg=#310102 ctermbg=none" })
-- vim.cmd.highlight({ "NormalNC", "guibg=none" })
-- vim.cmd.highlight({ "Constant", "guibg=none" })

-- Autoformat setting
local set_autoformat = function(pattern, bool_val)
  vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = pattern,
    callback = function()
      vim.b.autoformat = bool_val
    end,
  })
end

set_autoformat({ "md" }, false)
set_autoformat({ "markdown" }, false)
