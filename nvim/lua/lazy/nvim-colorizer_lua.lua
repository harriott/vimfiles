-- vim: set fdl=4:

-- $vfn/lua/lazy/nvim-colorizer_lua.lua

-- $lazy/nvim-colorizer.lua/doc/colorizer.txt
-- $lazy/nvim-colorizer.lua/test/expect.lua

-- :ColorizerToggle  " per buffer

return {
  "catgoose/nvim-colorizer.lua",
  event = "VeryLazy",
  opts = {
    lazy_load = true,
    filetypes = { "css", 'lua', }, -- that I definitely want it enabled in
    user_default_options = {
      AARRGGBB = true, -- enables `0xAARRGGBB` hex codes
      css_fn = true, -- enables  hsl(), hsla(), rgb(), rgba()
    }
  },
}

