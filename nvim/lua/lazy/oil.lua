
-- $vimfiles/nvim/lua/lazy/oil.lua

-- g? = actions.show_help
-- $lazy/oil.nvim/doc/oil.txt
-- $lazy/oil.nvim/README.md

return {
  { 'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      columns = {'icon','permissions','mtime',},
      delete_to_trash = true,
      view_options = { show_hidden = true, },
      win_options = { wrap = true, },
    },
  }
}

