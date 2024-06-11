-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "i", "v" }, "jk", "<esc>")
vim.keymap.set("n", "<leader>uW", ":set columns=120<enter>", { desc = "Set Narrow UI" })
vim.keymap.set("n", "<leader>u1", ":set columns=80<enter>", { desc = "Set width to 80" })
vim.keymap.set("n", "<leader>u2", ":set columns=100<enter>", { desc = "Set width to 100" })
vim.keymap.set("n", "<leader>u3", ":set columns=120<enter>", { desc = "Set width to 120" })
vim.keymap.set("n", "<leader>u4", ":set columns=160<enter>", { desc = "Set width to 160" })
vim.keymap.set("n", "<leader>u5", ":set columns=200<enter>", { desc = "Set width to 200" })
