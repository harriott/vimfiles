-- vim: set fdl=3:

-- :lsp disable spellwand  " unreliable

return {
  filetypes = { "markdown", "text" }, -- but it's leaking into  lua, mru, tex
  settings = {
    spellwand = {
      max_errors = 500,
    }
  }
}

