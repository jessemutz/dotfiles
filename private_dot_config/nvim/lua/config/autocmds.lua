-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd.highlight({ "Normal", "guibg=none ctermbg=none" })
-- vim.cmd.highlight({ "NormalNC", "guibg=#310102 ctermbg=none" })
vim.cmd.highlight({ "NormalNC", "guibg=none" })
vim.cmd.highlight({ "Constant", "guibg=none" })
