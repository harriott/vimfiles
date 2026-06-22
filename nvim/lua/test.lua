-- vim: fdl=2:

-- $vfn/lua/test.lua
--  required by  $vimfiles/test/init.vim
--  =e ($vfv/ftplugin/lua.vim)

-- ▩-> 0 lazy.nvim 0 bootstrap
require 'lazy/bootstrap'

-- ▩-> 0 lazy.nvim 1
require('lazy').setup(

  -- ▩--> 1 snipe_nvim
  require'lazy/snipe_nvim'
  -- nvim -u $vimfiles/test/init.vim $vfn/lua/test.lua $vimfiles/test/init.vim

-- -- ▩-> 2 gitsigns.nvim

-- ▩-> post-setup
)

