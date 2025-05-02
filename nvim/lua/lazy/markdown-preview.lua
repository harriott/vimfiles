-- vim: fdl=3:

-- $vfn/lua/lazy/markdown-preview.lua

-- $lazy/markdown-preview.nvim/README.md

-- $vfv/ftplugin/markdown.vim

return { "iamcco/markdown-preview.nvim", -- :Lazy update  might fail
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_auto_close = 0 -- leave browser tab open when leaving markdown buffer
    vim.g.mkdp_combine_preview = 1 -- just one browser tab
    vim.g.mkdp_theme = 'dark'
  end,
  ft = { "markdown" },
  config = function()
    vim.keymap.set('n','<f7>','<Cmd>MarkdownPreview<CR>') -- for all markdowns
      -- just closing the browser window when done turns it off globally
  end,
}

