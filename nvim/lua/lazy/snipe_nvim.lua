-- vim: fdl=4:

-- $vfn/lua/lazy/snipe_nvim.lua
-- begun with  $DCGRs/d-unix/r-linkarzu-dotfiles-latest/neovim/neobean/lua/plugins/snipe.lua

return { "leath-dub/snipe.nvim",
  -- keys = { { '<f1>', function() require("snipe").open_buffer_menu() end, desc = "Open Snipe buffer menu", }, },
  config = function()
    local snipe = require("snipe")
    snipe.setup({
      hints = { dictionary = "asfghl;wertyuiop", },
      navigate = {
        cancel_snipe = "<esc>",
        close_buffer = "d",
      },
    sort = "default",
    vim.keymap.set({'n'},'<f1>',function() snipe.open_buffer_menu() end,{desc = "Open Snipe buffer menu", }),
    })
  end,
}
