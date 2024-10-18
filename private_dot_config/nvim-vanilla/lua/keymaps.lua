local map = vim.keymap.set

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Quick back to normal
map({ "i", "v" }, "jk", "<esc>")

-- Toggle Neotree
map("n", "-", ":Neotree toggle<CR>", { desc = "Toggle NeoTree" })

-- save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- buffers
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- Clear highlights on search when pressing <Esc> in normal mode
map("n", "<Esc>", "<cmd>nohlsearch<CR>")


-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Diagnostic keymaps
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })


-- Oil
map("n", "<leader>o", require("oil").open_float, { desc = "[O]il buffer" })

-- Lazy
map("n", "<leader>wl", "<cmd>Lazy<CR>", { desc = "[L]azy" })
map("n", "<leader>wc", "<cmd>Lazy<CR>", { desc = "Lazy [C]lean" })

-- Code
map("n", "<leader>cp", "<cmd>MarkdownPreview<cr>", { desc = "Markdown [P]review" })
map("n", "<leader>cP", "<cmd>MarkdownPreviewStop<cr>", { desc = "Markdown [P]review Stop" })

-- Colorscheme
map("n", "<leader>wc", "<cmd>Telescope colorscheme<cr>", { desc = "[W]orkspace [C]olorscheme" })
