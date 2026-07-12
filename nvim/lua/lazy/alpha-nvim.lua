-- vim: set fdl=4:

-- https://harriott.github.io/ - dim 12 juil 2026

-- $vfn/lua/lazy/alpha-nvim.lua

-- $lazy/alpha-nvim/doc/alpha.txt
-- $lazy/alpha-nvim/README.md
--  :Alpha
--  no way to increase the  mru_cwd  list length
-- cwd set at start in  $vfv/enter/vimrc.vim

return { 'goolord/alpha-nvim',
  -- cond = vim.api.nvim_eval('$TERM_PROGRAM') == 'WezTerm',
    -- but (as with  vim-startify) AZERTY numbers don't select in  WezTerm...
  event = "VeryLazy", -- don't run at start

  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    local startify = require("alpha.themes.startify")
    startify.section.mru.val = { { type = "padding", val = 0 } }
    startify.file_icons.provider = "devicons"
    require("alpha").setup(startify.config)
  end,

}

