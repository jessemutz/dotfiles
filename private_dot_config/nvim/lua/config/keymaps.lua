-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "i", "v" }, "jk", "<esc>")
vim.keymap.set("n", "<leader>uW", ":set columns=120<enter>", { desc = "Set Narrow UI" })
vim.keymap.set("n", "<leader>u1", ":set columns=120<enter>", { desc = "Set width to 120" })
vim.keymap.set("n", "<leader>u2", ":set columns=160<enter>", { desc = "Set width to 160" })
vim.keymap.set("n", "<leader>u3", ":set columns=190<enter>", { desc = "Set width to 190" })

vim.keymap.set("n", "<leader>Oy", "<cmd>:ObsidianToday<CR>", { desc = "Create daily note for Today" })
vim.keymap.set("n", "<leader>OY", "<cmd>:ObsidianYesterday<CR>", { desc = "Create daily note for Yesterday" })
vim.keymap.set("n", "<leader>Ot", "<cmd>:ObsidianTemplate<CR>", { desc = "Insert template" })
vim.keymap.set("n", "<leader>Ob", "<cmd>:ObsidianBacklinks<CR>", { desc = "Search all backlinks in document" })
vim.keymap.set("n", "<leader>Ol", "<cmd>:ObsidianLinks<CR>", { desc = "Collect all links into a picker" })
vim.keymap.set("n", "<leader>sO", "<cmd>:ObsidianSearch<CR>", { desc = "Search Obsidian vault" })
vim.keymap.set("n", "<leader>Os", "<cmd>:ObsidianSearch<CR>", { desc = "Search Obsidian vault" })

vim.keymap.set("n", "-", require("oil").open_float, { desc = "Open parent directory in Oil buffer" })
