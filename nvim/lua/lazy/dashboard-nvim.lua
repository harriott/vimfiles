-- vim: set fdl=4:

-- https://harriott.github.io/ - dim 12 juil 2026

-- $vfn/lua/lazy/dashboard-nvim.lua
-- $lazy/dashboard-nvim/doc/dashboard.txt
-- :Dashboard
-- not as useable as  vim-startify

return {'nvimdev/dashboard-nvim',
  -- cond = vim.api.nvim_eval('$TERM_PROGRAM') == 'WezTerm',
  -- event = 'VimEnter',
  event = "VeryLazy", -- because messy background if run at start

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

