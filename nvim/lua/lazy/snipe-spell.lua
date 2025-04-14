-- vim: fdl=4:

-- $vfn/lua/lazy/snipe-spell.lua

return { "kungfusheep/snipe-spell.nvim",
  dependencies = "leath-dub/snipe.nvim",
  config = true,
  keys = { { "<leader>ss", "<cmd>SnipeSpell <cr>", desc = ":SnipeSpell" }, },
}

