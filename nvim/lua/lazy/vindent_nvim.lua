-- vim: fdl=2:

-- $vfn/lua/lazy/vindent_nvim.lua

return { 'jessekelighine/vindent.nvim',
  config = function()
      local vindent = require("vindent")
      local block_opts = {
          strict     = { skip_empty_lines = false, skip_more_indented_lines = false },
          contiguous = { skip_empty_lines = false, skip_more_indented_lines = true  },
          loose      = { skip_empty_lines = true,  skip_more_indented_lines = true  },
      }
      vindent.map.BlockMotion({ prev = "[=", next = "]=" }, block_opts.strict)
      vindent.map.Motion({ prev = "[-", next = "]-" }, "less")
      vindent.map.Motion({ prev = "[+", next = "]+" }, "more")
      vindent.map.Motion({ prev = "[;", next = "];" }, "diff")
      vindent.map.BlockEdgeMotion({ prev = "[p", next = "]p" }, block_opts.loose)
      vindent.map.BlockEdgeMotion({ prev = "[P", next = "]P" }, block_opts.contiguous)
      vindent.map.Object("iI", "ii", block_opts.strict)
      vindent.map.Object("ii", "ii", block_opts.loose)
      vindent.map.Object("ai", "ai", block_opts.loose)
      vindent.map.Object("aI", "aI", block_opts.loose)
      vim.g.vindent_begin = false
  end
}

