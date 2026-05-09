-- vim: set fdl=5:

-- $vfn/lua/lazy/telescope-everything_nvim.lua

-- $lazy/telescope-everything.nvim/README.md
-- :Telescope everything

return {'Verf/telescope-everything.nvim',
  cond = vim.fn.has("win64") == 1,
  config = function()
    require'telescope'.load_extension 'everything'
    require'telescope'.setup({
      extensions = {
        everything = {
          sort = true,
        }
      },
    })
  end,
}

