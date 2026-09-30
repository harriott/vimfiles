-- vim: set fdl=4:

-- https://harriott.github.io/ - mer 16 sept 2026

-- $vfn/lua/lazy/keytrail_nvim.lua

-- $lazy/keytrail.nvim/docs/test.yaml

return { 'jfryy/keytrail.nvim',
  dependencies = {'nvim-treesitter/nvim-treesitter'},
  config = function ()
    require("keytrail").setup({
      popup = { enabled = true, },
      filetypes = { json = true, yaml = true, },
    })
  end,
} -- not getting any popups, even in minimal setup...

