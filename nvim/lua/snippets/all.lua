-- vim: set fdl=2:

-- $vfn/lua/snippets/all.lua

local luasnip = require("luasnip")
local s = luasnip.snippet
local t = luasnip.text_node

luasnip.add_snippets("all", {
  s("@g", { t("@gmail.com"), }),
  s("@h", { t("@hotmail.com"), }),
  s("@y", { t("@yahoo.com"), }),
  s("Cz", { t("Cafézoïde"), }),
})

