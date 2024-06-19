return {
  {
    'ggandor/leap.nvim',
    dependencies = { 'tpope/vim-repeat' },
    lazy = false,
    config = function()
      vim.keymap.set({ 'n', 'x', 'o' }, 'q', '<Plug>(leap-forward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'Q', '<Plug>(leap-backward)')
      vim.keymap.set({ 'n', 'x', 'o' }, 'gq', '<Plug>(leap-from-window)')
    end,
  },
}
