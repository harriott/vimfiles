-- vim: fdl=3:

-- $vfn/lua/lazy/typescript-tools_nvim.lua

-- brings in  tsserver  Diagnostics
  -- $cITCP/scratch.ts
  -- look in  $cGRs/dts-ts.ffl

return { 'pmizio/typescript-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'neovim/nvim-lspconfig' -- eventuall reason to prefer  $vfn/lsp/ts_ls.lua
    },
    opts = {},
}

