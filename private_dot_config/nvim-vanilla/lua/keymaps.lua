local map = vim.keymap.set

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Move highlighted lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Better movement - keep cursor in middle
map("n", "<C-D>", "<C-D>zz")
map("n", "<C-U>", "<C-Y>zz")
map("n", "n", "nzzzv")

-- Quick back to normal
map({ "i", "v" }, "jk", "<esc>")

-- Toggle Neotree
map("n", "-", ":Neotree toggle<CR>", { desc = "Toggle NeoTree" })

-- Save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- find and replace word cursor is on
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- buffers
map("n", "<S-h>", vim.cmd.bprevious, { desc = "Prev Buffer" })
map("n", "<S-l>", vim.cmd.bnext, { desc = "Next Buffer" })

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
map("n", "<leader>wl", vim.cmd.Lazy, { desc = "[L]azy" })

-- Code
map("n", "<leader>cp", vim.cmd.MarkdownPreview, { desc = "Markdown [P]review" })
map("n", "<leader>cP", vim.cmd.MarkdownPreviewStop, { desc = "Markdown [P]review Stop" })

-- Colorscheme
map("n", "<leader>wc", "<cmd>Telescope colorscheme<cr>", { desc = "[W]orkspace [c]olorscheme" })

