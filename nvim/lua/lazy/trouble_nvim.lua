-- vim: fdl=3:

-- https://harriott.githubio/ - Fri 11 Apr 2025

-- $vfn/lua/lazy/trouble_nvim.lua

-- $lazy/nvim-lspconfig/doc/lspconfig.txt

return { "folke/trouble.nvim",
  cmd = "Trouble",
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = ":Trouble diagnostics toggle filter.buf=0",
      -- toggles
    },
  },
  opts = {},
}

