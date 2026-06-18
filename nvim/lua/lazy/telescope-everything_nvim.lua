-- vim: set fdl=2:

-- https://harriott.github.io/ - mer 10 juin 2026

-- $vfn/lua/lazy/telescope-everything_nvim.lua

-- $lazy/telescope-everything.nvim/README.md
-- :Telescope everything

return {'Verf/telescope-everything.nvim',
  cond = vim.fn.has("win64") == 1,
  config = function()
    require'telescope'.load_extension 'everything'
    -- configuration is done in  $vfn/lua/lazy/telescope_nvim.lua
    -- not getting anything on  HPEB840G38
  end,
}

