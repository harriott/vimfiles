
-- $vimfiles/nvim/lua/lazy/lualine.lua

-- $lazy/lualine.nvim/doc/lualine.txt

return {
  { 'nvim-lualine/lualine.nvim',
    lazy = false,  -- for  nvim-notify
    priority = 1000,
    dependencies = { 'nvim-tree/nvim-web-devicons', },
    config = function()
      require'lualine'.setup{
        extensions = {'fzf','lazy','man','oil',},
          -- 'fzf' adds what?
          -- 'man' is helpful
          -- 'nvim-tree' shows the full path
          -- 'oil' shows the full path
          -- 'quickfix' is helpful, but  $jtCP/Nvim-lualine-quickfix_extension_crashes_on_%.md
          -- 'toggleterm' is crap
        -- options = { theme = 'codedark' },
        -- options = { theme = 'gruvbox' },
        -- options = { theme = 'jellybeans' },
        -- options = { theme = 'onedark' },
        options = { theme = 'material' },
      }
    end,
    }
}

