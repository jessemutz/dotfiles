return {
  {
    'williamboman/mason.nvim',
    opts = { ensure_installed = { 'gitui' } },
    keys = {
      {
        '<leader>gG',
        function()
          vim.terminal.open({ 'gitui' }, { esc_esc = false, ctrl_hjkl = false })
        end,
        desc = 'GitUi (cwd)',
      },
      {
        '<leader>gg',
        function()
          vim.terminal.open({ 'gitui' }, { cwd = vim.root.get(), esc_esc = false, ctrl_hjkl = false })
        end,
        desc = 'GitUi (Root Dir)',
      },
    },
    init = function()
      -- delete lazygit keymap for file history
      vim.api.nvim_create_autocmd('User', {
        pattern = 'vimKeymaps',
        once = true,
        callback = function()
          pcall(vim.keymap.del, 'n', '<leader>gf')
          pcall(vim.keymap.del, 'n', '<leader>gl')
        end,
      })
    end,
  },
}
