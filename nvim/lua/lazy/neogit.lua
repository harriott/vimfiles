
-- https://harriott.githubio/ - mer 22 mai 2024

-- $vimfiles/nvim/lua/lazy/neogit.lua

-- $lazy/neogit/doc/neogit.txt
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
-- :DiffviewFileHistory %
-- :DiffviewClose
-- g?

