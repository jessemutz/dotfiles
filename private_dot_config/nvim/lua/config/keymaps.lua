-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Quick back to normal
map({ "i", "v" }, "jk", "<esc>")

-- Move highlighted lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Put item as replacement, but move replacement to 0 register
map("x", "<leader>p", [["_dP]], { desc = "[p]ut, but keep register" })

-- find and replace word cursor is on
map("n", "<leader>cn", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "[r]eplace all)" })

-- buffers
map("n", "<S-h>", vim.cmd.bprevious, { desc = "Prev Buffer" })
map("n", "<S-l>", vim.cmd.bnext, { desc = "Next Buffer" })

-- split window
map("n", "<leader>|", vim.cmd.vs, { desc = "Split Vertically" })
map("n", "<leader>-", vim.cmd.split, { desc = "Split Horizontally" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
