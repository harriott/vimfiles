-- vim: fdl=2:

-- https://harriott.githubio/ - Tue 04 Nov 2025

-- $vfn/lua/lazy/neogit.lua

-- $lazy/neogit/doc/neogit.txt

-- (with Vim's wd in a Git repository) :Neogit
--  ?   => help (Esc  quits it)
--  d d => diff this, seems to be using  sindrets/diffview.nvim
  --  :q  to leave
  --  Tab/Shift-Tab => cycles through files in the repository
--  q   => quits out of panes

return { "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim", -- :h neogit_diff_popup
    -- Only one of these is needed, not both:
    "nvim-telescope/telescope.nvim",
    -- "ibhagwan/fzf-lua",
  },
  config = true
}

