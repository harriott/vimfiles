
-- $vimfiles/nvim/lua/lazy/leap.lua

-- $lazy/leap.nvim/doc/leap.txt

return {
  { 'ggandor/leap.nvim',
    lazy = false,  -- for  nvim-notify
    config = function()
      -- require('lualine').setup()
      require('leap').setup{
        vim.keymap.set('n', 's', '<Plug>(leap)'),
        vim.keymap.set('n', 'S', '<Plug>(leap-from-window)'),
      }
    end,
  }
}

