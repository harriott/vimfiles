
-- $vimfiles/nvim/lua/lazy/nvim-neoclip.lua

-- :Telescope neoclip

return { 'AckslD/nvim-neoclip.lua',
  dependencies = { 'kkharji/sqlite.lua', },
  requires = { {'kkharji/sqlite.lua', module = 'sqlite'}, {'nvim-telescope/telescope.nvim'}, },
  config = function()
    require('neoclip').setup()
    vim.keymap.set({'n'},'<leader>yy',"<Cmd>echo 'neoclip'<bar>Telescope neoclip<CR>")
  end,
}

