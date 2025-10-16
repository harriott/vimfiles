-- vim: set fdl=3:

-- $vfn/lua/lazy/tabby_nvim.lua
-- not showing in  unix Neovide...

-- $lazy/tabby.nvim/doc/tabby.txt
-- =vim.o.showtabline
-- obliterates  bufferline.nvim

return { 'nanozuki/tabby.nvim',
  lazy = false,
  -- event = 'VimEnter',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('tabby').setup({
      preset = 'active_tab_with_wins', -- only shows buffers for the active tab...
    })
  end,
  }

