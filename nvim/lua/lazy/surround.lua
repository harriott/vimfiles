
-- $vfn/lua/lazy/surround.lua

-- $lazy/nvim-surround/doc/nvim-surround.txt
-- cs'"  => change surround single quotes to double quotes
-- ysiw' => you surround inner word with single quote

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

