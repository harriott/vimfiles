-- vim: set fdl=4:

-- $vfn/lua/lazy/oil.lua

-- g? = actions.show_help
-- $lazy/oil.nvim/doc/oil.txt
-- $lazy/oil.nvim/README.md
-- :e $HOME
-- :e $onGH
-- :e %:h
-- :e $coreIT/MSWin

return {
  { 'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      columns = {'icon','permissions','mtime',},
      delete_to_trash = true,
      view_options = { show_hidden = true, },
      win_options = { wrap = true, },
      vim.keymap.set({'i','n','v'},'<leader><f10>',
        function() vim.cmd(':cd %:p:h') vim.cmd(':e.') end, {desc='cd to file\'s & open oil'})
    },
  }
}

