-- vim: fdl=4:

-- $vfn/lua/lazy/snipe_nvim.lua
-- $lazy/snipe.nvim/README.md
-- begun with  $cGRs/d-unix-like/d-macOS/r-linkarzu-dotfiles-latest/neovim/old-plugins/snipe.old
-- :lua require'lazy/snipe_nvim'

return { "leath-dub/snipe.nvim",
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
