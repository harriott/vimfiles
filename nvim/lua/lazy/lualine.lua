
-- $vimfiles/nvim/lua/lazy/lualine.lua

return {
  { 'nvim-lualine/lualine.nvim',
    lazy = false,  -- for  nvim-notify
    priority = 1000,
    dependencies = { 'nvim-tree/nvim-web-devicons', },
    config = function()
      -- require('lualine').setup()
      require('lualine').setup{
        extensions = {'fzf','man','quickfix',},
          -- 'fzf' adds what?
          -- 'man' is helpful
          -- 'quickfix' is helpful
          -- 'toggleterm' is crap
      }
    end,
    }
}

