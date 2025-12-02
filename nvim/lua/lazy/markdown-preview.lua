-- vim: fdl=3:

-- $vfn/lua/lazy/markdown-preview.lua

-- https://harriott.github.io/ - Tue 04 Nov 2025

-- Markdown Preview
--  very nice preview in browser
--   requires  corepack enable  on the system

-- :Lazy update  might fail, if so
--   $ sudo rm -r $lazy/markdown-preview.nvim
--   g $lazy  to open FE and Delete  markdown-preview.nvim
--  then  Lazy  will build it on next launch of  Nvim

-- $lazy/markdown-preview.nvim/README.md

return { "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && npm install",
  -- build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_auto_close = 0 -- leave browser tab open when leaving markdown buffer
    vim.g.mkdp_combine_preview = 1 -- just one browser tab
    vim.g.mkdp_theme = 'dark'
  end,
  ft = { "markdown" },
  config = function()
    -- vim.keymap.set('n','<f7>','<Cmd>MarkdownPreview<CR>') -- for all markdowns
      -- global mapping, so moved to  $vfv/ftplugin/markdown.vim
      -- just closing the browser window when done turns it off globally
      -- not taking on  HPEB840G37...
  end,
}

