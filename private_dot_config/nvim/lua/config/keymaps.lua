-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map({ "i", "v" }, "jk", "<esc>")
map("n", "<leader>uW", ":set columns=120<enter>", { desc = "Set Narrow UI" })
map("n", "<leader>u1", ":set columns=120<enter>", { desc = "Set width to 120" })
map("n", "<leader>u2", ":set columns=160<enter>", { desc = "Set width to 160" })
map("n", "<leader>u3", ":set columns=190<enter>", { desc = "Set width to 190" })

map("n", "<leader>Oy", "<cmd>:ObsidianToday<CR>", { desc = "[O]bsidian: Create daily note for Toda[y]" })
map("n", "<leader>OY", "<cmd>:ObsidianYesterday<CR>", { desc = "[O]bsidian: Create daily note for [Y]esterday" })
map("n", "<leader>Ot", "<cmd>:ObsidianTemplate<CR>", { desc = "[O]bsidian: Insert [t]emplate" })
map("n", "<leader>Ob", "<cmd>:ObsidianBacklinks<CR>", { desc = "[O]bsidian: Search all [b]acklinks in document" })
map("n", "<leader>Ol", "<cmd>:ObsidianLinks<CR>", { desc = "[O]bsidian: Collect [l]inks into a picker" })
map("n", "<leader>sO", "<cmd>:ObsidianSearch<CR>", { desc = "[S]earch [O]bsidian vault" })
map("n", "<leader>Os", "<cmd>:ObsidianSearch<CR>", { desc = "[O]bsidian: [s]earch vault" })
map("n", "|", "<cmd>:ObsidianToggleCheckbox<CR>", { desc = "Toggle checkbox in Obsidian" })

-- Oil
map("n", "-", require("oil").open_float, { desc = "Open parent directory in Oil buffer" })

-- Overrides for which-key
map("n", "<leader>?", require("which-key").show, { desc = "Buffer Local Keymaps (which-key)" })

-- buffers
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other [b]uffer" })
map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>bd", LazyVim.ui.bufremove, { desc = "[B]uffer [d]elete" })
map("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "[B]uffer [D]elete and Window" })

--keywordprg
map("n", "<leader>K", "<cmd>norm! K<cr>", { desc = "[K]eywordprg" })

-- Files & Find
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "[f]ile: [n]ew" })

-- Format Markdown Table
map({ "n", "v" }, "<leader>ct", ":'<,'>!column -t -s '|' -o '|'<CR>", { desc = "format .md [t]able" })

-- Code
map("n", "<leader>cp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Markdown [p]review" })
map("n", "<leader>cP", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Markdown [P]review Stop" })
