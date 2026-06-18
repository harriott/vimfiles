-- vim: set fdl=4:

-- https://harriott.github.io/ - Sat 23 May 2026

-- $vfn/lua/lazy/dashboard-nvim.lua
-- $lazy/dashboard-nvim/doc/dashboard.txt
-- :Dashboard

return {'nvimdev/dashboard-nvim',
  -- event = 'VimEnter',
  event = "VeryLazy", -- because it launches with messy background
  config = function()
    require('dashboard').setup {
      config = {
        mru = { enable = true, limit = 30, },
        week_header = { enable = true, },
      }, -- of theme
      hide = { statusline = false, },
    }
    vim.keymap.set({'n'},'<leader>B',"<Cmd>e $DrJo<bar>sl 100m<bar>Dashboard<CR>",{desc=':Dashboard'})
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}

