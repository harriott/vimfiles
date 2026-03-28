-- vim: set fdl=4:

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
    -- log_level = 'debug',
  }
}

