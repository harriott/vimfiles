-- vim: fdl=3:

-- $vfn/lua/lazy/ts-comments_nvim.lua

return { 'folke/ts-comments.nvim',
  event = "VeryLazy",
    opts = {
      lang = {
        vim = { "\" %s" },
    },
  },
} -- for minor improvements

