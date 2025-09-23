-- vim: set fdl=4:

-- $vfn/lua/lazy/auto-session.lua

-- $lazy/auto-session/README.md
-- :SessionRestore <name>
-- :SessionSave <name>
-- ~/.local/share/nvim/sessions  gets made

return { 'rmagatti/auto-session',
  lazy = false,
  opts = {
    enabled = false,
    -- log_level = 'debug',
  }
}

