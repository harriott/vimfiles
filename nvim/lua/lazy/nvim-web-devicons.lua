
-- $vimfiles/nvim/lua/lazy/nvim-web-devicons

-- $lazy/nvim-web-devicons/README.md

-- :NvimWebDeviconsHiTest  " lists them colourfully

-- $lazy/nvim-web-devicons/lua/nvim-web-devicons/icons-default.lua  where they're set

return {
  { 'nvim-tree/nvim-web-devicons',
    config = function()
      require("nvim-web-devicons").set_icon {
        log = {
          icon = "󰨖", -- as for "Zip"
          color = "#dddddd", cterm_color = "253", name = "Log",
        }
      }
    end,
  }
}

