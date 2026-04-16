-- vim: fdl=4:

-- https://harriott.githubio/ - sam 11 avr 2026

-- $vfn/lua/lazy/csvview_nvim.lua
-- $lazy/csvview.nvim/README.md
-- Could be good for visually checking, but
--  a  $vfv/syntax/csv.vim  with  hi def link CsvViewDelimiter Comment  just greys out everything
--  Crashes if I try to paste a deleted column...
--  doesn't name or number the columns down in the command-line
--  everything's left-justified except numbers, which are right
-- nice rainbow colours

return { "hat0uma/csvview.nvim",
  ---@module "csvview"
  ---@type CsvView.Options
  lazy = false, -- for $vfv/ftplugin/csv.vim
  opts = {
    parser = { comments = { "#", "//" } },
    keymaps = {
      textobject_field_inner = { "if", mode = { "o", "x" } },
      textobject_field_outer = { "af", mode = { "o", "x" } },
      jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
      jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
      -- jump_next_row = { "<Enter>", mode = { "n", "v" } },
      -- jump_prev_row = { "<S-Enter>", mode = { "n", "v" } },
    },
    view = {
      display_mode = "border",
      header_lnum = 1,
      sticky_header = {
        enabled = true,
        separator = "─",
      },
    },
  },
  cmd = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle" }, -- see $vfv/ftplugin/csv.vim
}

