-- vim: fdl=2:

-- $vfn/lua/test.lua
--  required by  $vimfiles/test/init.vim
--  =e ($vfv/ftplugin/lua.vim)

-- ▩-> 0 lazy.nvim 0 bootstrap
require 'lazy/bootstrap'

-- ▩-> 0 lazy.nvim 1
require('lazy').setup(
  {
    -- {'nacro90/numb.nvim', config = function() require('numb').setup() end, },
    require'lazy/keytrail_nvim',
    require'lazy/nvim-treesitter',
    -- require'lazy/snipe_nvim'
    require'lazy/telescope_nvim',
  } -- no comma!
)

