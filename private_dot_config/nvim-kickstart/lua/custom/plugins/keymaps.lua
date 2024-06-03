return {
  -- Back to Normal mode
  vim.keymap.set({ 'i', 'v' }, 'jk', '<esc>'),

  -- Save File
  vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' }),

  -- buffers
  vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' }),
  vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next Buffer' }),
  vim.keymap.set('n', '[b', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' }),
  vim.keymap.set('n', ']b', '<cmd>bnext<cr>', { desc = 'Next Buffer' }),
  vim.keymap.set('n', '<leader>bb', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' }),
  vim.keymap.set('n', '<leader>`', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' }),
  -- vim.keymap.set('n', '<leader>bd', LazyVim.ui.bufremove, { desc = 'Delete Buffer' }),
  vim.keymap.set('n', '<leader>bD', '<cmd>:bd<cr>', { desc = 'Delete Buffer and Window' }),

  -- Resize window using <ctrl> arrow keys
  vim.keymap.set('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Increase Window Height' }),
  vim.keymap.set('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease Window Height' }),
  vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease Window Width' }),
  vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase Window Width' }),

  -- better indenting
  vim.keymap.set('v', '<', '<gv'),
  vim.keymap.set('v', '>', '>gv'),

  -- commenting
  vim.keymap.set('n', 'gco', 'o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>', { desc = 'Add Comment Below' }),
  vim.keymap.set('n', 'gcO', 'O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>', { desc = 'Add Comment Above' }),
}
