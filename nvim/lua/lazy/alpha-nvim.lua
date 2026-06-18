-- vim: set fdl=4:

-- https://harriott.github.io/ - Thu 18 Jun 2026

-- $vfn/lua/lazy/alpha-nvim.lua

-- $lazy/alpha-nvim/doc/alpha.txt
--  :Alpha
--  no way to increase the  mru_cwd  list length
-- cwd set at start in  $vfv/enter/vimrc.vim

return { 'goolord/alpha-nvim',
  event = "VeryLazy", -- don't run at start

  -- dependencies = { 'nvim-mini/mini.icons' },
  -- config = function ()
  --   require'alpha'.setup(require'alpha.themes.startify'.config)
  -- end,

  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    local startify = require("alpha.themes.startify")
    startify.section.mru.val = { { type = "padding", val = 0 } }
    startify.file_icons.provider = "devicons"
    require("alpha").setup(startify.config)
  end,

}

