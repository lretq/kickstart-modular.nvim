return {
  {
    'https://codeberg.org/andyg/leap.nvim',
    dependencies = { 'tpope/vim-repeat' },
    lazy = false,
    config = function()
      vim.keymap.set({ 'n', 'x', 'o' }, 't', '<Plug>(leap-forward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'T', '<Plug>(leap-backward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'gt', '<Plug>(leap-from-window)')
    end,
  },
}
