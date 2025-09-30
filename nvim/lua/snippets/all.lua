-- vim: set fdl=2:

-- $vfn/lua/snippets/all.lua

local luasnip = require("luasnip")
local s = luasnip.snippet
local t = luasnip.text_node

luasnip.add_snippets("all", {
  s("Cz", {
    t("Cafézoïde"),
  }),
})

