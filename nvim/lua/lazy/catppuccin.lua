
-- $vfn/lua/lazy/catppuccin.lua

return {
  { 'catppuccin/nvim',
    name = "catppuccin",
    priority = 1000,
    config = function()
      -- not much difference in these
      -- vim.cmd.colorscheme "catppuccin"
      -- vim.cmd.colorscheme "catppuccin-frappe"
      -- vim.cmd.colorscheme "catppuccin-macchiato"
      vim.cmd.colorscheme "catppuccin-mocha"
    end,
  }
}

