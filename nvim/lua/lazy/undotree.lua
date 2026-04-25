-- vim: fdl=1:

-- https://harriott.github.io/ - Sat 25 Apr 2026

-- $vfn/lua/lazy/undotree.lua
-- seems to obviate  nvim.undotree
-- $lazy/undotree/README.md > quit

return { "jiaoshijie/undotree",
    opts = {},
    keys = { { "<leader>U", "<cmd>lua require('undotree').toggle()<cr>" }, },
} -- for minor improvements

