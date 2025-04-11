-- vim: fdl=2:

-- https://harriott.githubio/ - mer 22 mai 2024

-- $vfn/lua/lazy/neogit.lua

-- $lazy/neogit/doc/neogit.txt
-- :h neogit_diff_popup
-- :Neogit
-- ? => help
-- q => quits

return { "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    -- Only one of these is needed, not both:
    "nvim-telescope/telescope.nvim",
    -- "ibhagwan/fzf-lua",
  },
  config = true
}


-- Diffview.nvim:
--  $lazy/diffview.nvim/doc/diffview.txt
--  :DiffviewFileHistory %
--  :DiffviewClose
--  g?

