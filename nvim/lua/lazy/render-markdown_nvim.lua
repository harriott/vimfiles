-- vim: fdl=3:

-- $vfn/lua/lazy/render-markdown_nvim.lua

-- $lazy/render-markdown.nvim/README.md
-- $lazy/render-markdown.nvim/doc/render-markdown.txt

return { 'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  opts = {},
  config = function()
    -- require('render-markdown').disable()
    -- file_types = {},
    -- require('render-markdown').setup({ enabled=false, })
    -- vim.keymap.set({'n'},'<leader>rm',require('render-markdown').buf_toggle(),{desc=':RenderMarkdown buf_toggle'})
  end,
}

