return {
  {
    'danymat/neogen',
    keys = {
      { '<leader>ng', '<cmd>Neogen<cr>', desc = 'NeoGen' },
    },
    config = function()
      require('neogen').setup {}
    end,
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*"
  },
}
