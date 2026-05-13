-- vim: set fdl=2:

-- https://harriott.github.io/ - sam 09 mai 2026

-- $vfn/lua/lazy/telescope-everything_nvim.lua

-- $lazy/telescope-everything.nvim/README.md
-- :Telescope everything

return {'Verf/telescope-everything.nvim',
  cond = vim.fn.has("win64") == 1,
  config = function()
    require'telescope'.load_extension 'everything'
    -- configuration is done in  $vfn/lua/lazy/telescope.lua
  end,
}

