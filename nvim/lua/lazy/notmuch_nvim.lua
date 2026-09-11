-- vim: fdl=5:

-- https://harriott.githubio/ - sam 11 juil 2026

-- $vfn/lua/lazy/notmuch_nvim.lua

-- $lazy/notmuch.nvim/doc/notmuch.txt
-- $lazy/notmuch.nvim/README.md
-- Usage:
--  :Inbox
--  :Notmuch  gets emails by tags
--  I prefer to sync & tag with my tools in  $OSL/nodes/bashrc-clm
--  q  quits out

return { "yousefakbar/notmuch.nvim",
  config = function()
    opts = {
      notmuch_db_path = "/home/jo/.local/share/mail",
      render_html_body = true, -- requires w3m
      thread_view_mode = "newest-first"
    },
    require('notmuch').setup(opts)
  end,
}

