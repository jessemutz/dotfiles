-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "i", "v" }, "jk", "<esc>")
vim.keymap.set("n", "<leader>uW", ":set columns=120<enter>", { desc = "Set Narrow UI" })
vim.keymap.set("n", "<leader>u1", ":set columns=80<enter>", { desc = "Set width to 80" })
vim.keymap.set("n", "<leader>u2", ":set columns=100<enter>", { desc = "Set width to 100" })
vim.keymap.set("n", "<leader>u3", ":set columns=120<enter>", { desc = "Set width to 120" })
vim.keymap.set("n", "<leader>u4", ":set columns=160<enter>", { desc = "Set width to 160" })
vim.keymap.set("n", "<leader>u5", ":set columns=190<enter>", { desc = "Set width to 190" })

vim.keymap.set("n", "<leader>oy", "<cmd>:ObsidianToday<CR>", { desc = "Create daily note for Today" })
vim.keymap.set("n", "<leader>oY", "<cmd>:ObsidianYesterday<CR>", { desc = "Create daily note for Yesterday" })
vim.keymap.set("n", "<leader>ot", "<cmd>:ObsidianTemplate<CR>", { desc = "Insert template" })
vim.keymap.set("n", "<leader>ob", "<cmd>:ObsidianBacklinks<CR>", { desc = "Search all backlinks in document" })
vim.keymap.set("n", "<leader>ol", "<cmd>:ObsidianLinks<CR>", { desc = "Collect all links into a picker" })
vim.keymap.set("n", "<leader>sO", "<cmd>:ObsidianSearch<CR>", { desc = "Search Obsidian vault" })
vim.keymap.set("n", "<leader>os", "<cmd>:ObsidianSearch<CR>", { desc = "Search Obsidian vault" })
