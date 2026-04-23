-- vim: fdl=3:

-- https://harriott.githubio/ - Mon 20 Apr 2026

-- $vfn/lua/lazy/vindent_nvim.lua

-- $lazy/vindent.nvim/README.md

return { 'jessekelighine/vindent.nvim',
  config = function()

      local vindent = require("vindent")
      local block_opts = {
          strict     = { skip_empty_lines = false, skip_more_indented_lines = false },
          contiguous = { skip_empty_lines = false, skip_more_indented_lines = true  },
          loose      = { skip_empty_lines = true,  skip_more_indented_lines = true  },
      }

      -- Moving around indents:
      vindent.map.BlockMotion({ prev = "[=", next = "]=" }, block_opts.strict) -- got adjacent block of equal indent
      vindent.map.Motion({ prev = "[-", next = "]-" }, "less") -- goto less indent
      vindent.map.Motion({ prev = "[+", next = "]+" }, "more") -- goto more indent
      vindent.map.Motion({ prev = "[;", next = "];" }, "diff") -- goto different indent
      vindent.map.BlockEdgeMotion({ prev = "[p", next = "]p" }, block_opts.loose)
      vindent.map.BlockEdgeMotion({ prev = "[P", next = "]P" }, block_opts.contiguous)

      -- Selecting indents:
      vindent.map.Object("iI", "ii", block_opts.strict)
      vindent.map.Object("ii", "ii", block_opts.loose) -- vii  selects block of same indentation
      vindent.map.Object("ai", "ai", block_opts.loose)
      vindent.map.Object("aI", "aI", block_opts.loose)

      -- vim.g.vindent_begin = false  -- if want to keep horizontal position

  end
}

