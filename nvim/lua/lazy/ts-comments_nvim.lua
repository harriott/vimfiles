-- vim: fdl=3:

-- $vfn/lua/lazy/ts-comments_nvim.lua

-- $lazy/ts-comments.nvim/doc/ts-comments.nvim.txt

return { 'folke/ts-comments.nvim',
  event = "VeryLazy",
  opts = {
    lang = {
      ps1 = { "# %s" },
      vim = { "\" %s" },
    },
  }, -- :se cms
} -- for minor improvements

