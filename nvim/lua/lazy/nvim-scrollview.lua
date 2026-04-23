-- vim: fdl=3:

-- https://harriott.githubio/ - Mon 20 Apr 2026

-- $vfn/lua/lazy/nvim-scrollview.lua

-- $lazy/nvim-scrollview/doc/scrollview.txt

return{'dstein64/nvim-scrollview',
  config=function()
    require'scrollview'.setup()
      vim.keymap.set({'n'},'<leader>sv','<Cmd>ScrollViewToggle<CR>')
    end,
  }

