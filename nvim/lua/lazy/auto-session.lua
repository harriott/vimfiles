-- vim: set fdl=4:

-- https://harriott.github.io/ - Fri 24 Jul 2026

-- $vfn/lua/lazy/auto-session.lua

-- $lazy/auto-session/README.md
-- :AutoSession save [<name>]
-- :AutoSession search
-- rm ~/.local/share/nvim/sessions/*

return { 'rmagatti/auto-session',
  lazy = false,
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    enabled = false,
    session_lens = {
      picker = nil,
      load_on_setup = true, -- allows  :Telescope session-lens
    }
    -- log_level = 'debug',
  }
}

