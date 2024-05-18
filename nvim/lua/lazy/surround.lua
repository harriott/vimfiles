
-- $vimfiles/nvim/lua/lazy/surround.lua

return {
  { 'kylechui/nvim-surround',
    version = "*", -- for stability
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- nothing yet
        })
    end
  },
}

