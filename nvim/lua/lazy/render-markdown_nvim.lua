-- vim: fdl=2:

-- $vfn/lua/lazy/render-markdown_nvim.lua

-- https://harriott.github.io/ - Tue 04 Nov 2025

-- $lazy/render-markdown.nvim/README.md
-- $lazy/render-markdown.nvim/doc/render-markdown.txt
-- :h render-markdown

-- could be occasionally useful
--  check with  $vimfiles/test/README.md

return { 'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  opts = {},
  config = function()
    --
    -- file_types = {},

    -- ▩-> 0 colours
    --  :h render-markdown-colors
    --  :so $VIMRUNTIME/syntax/hitest.vim  then  /^MarkWord\|^RedrawDebug

    -- vim.api.nvim_set_hl(0, 'RenderMarkdownCodeBorder', { link = 'HelpviewOptionlink' })
    -- makes the code name line powder blue...

    -- Necessary to distinguish headings > l3, but this breaks folded signs...
    vim.api.nvim_set_hl(0, 'RenderMarkdownH1Bg', { link = 'MarkWord1' })
    vim.api.nvim_set_hl(0, 'RenderMarkdownH2Bg', { link = 'MarkWord2' })
    vim.api.nvim_set_hl(0, 'RenderMarkdownH3Bg', { link = 'MarkWord3' })
    vim.api.nvim_set_hl(0, 'RenderMarkdownH4Bg', { link = 'MarkWord4' })
    vim.api.nvim_set_hl(0, 'RenderMarkdownH5Bg', { link = 'MarkWord5' })
    vim.api.nvim_set_hl(0, 'RenderMarkdownH6Bg', { link = 'MarkWord6' })

    -- ▩-> 1 setup
    -- require('render-markdown').disable()
    require'render-markdown'.setup{
      enabled=false,

      -- :h render-markdown-setup-list-bullets
      bullet = {
        -- enabled = false,
        left_pad = 4,
        -- icons = { { '󰫶 ', '󱂉 ' } },
        icons = { '─','─','─','─' },
      },

    -- :h render-markdown-setup-code-blocks
      code = {
        language_icon = false, -- because  sign = true,  is enough
      },

      heading = {
        -- :h render-markdown-setup-headings
        enabled = false,
        -- icons = { '󰼏 ', '󰎨 ' },
        -- icons = { 'Ⅰ ', 'Ⅱ ', 'Ⅲ  ', 'Ⅳ󰲧 ', 'Ⅴ  ', 'Ⅵ  ' },
        icons = { '⒈  ', '⒉  ', '⒊  ', '⒋  ', '⒌  ', '⒍  ' },
        width = 'block', left_pad = 2, right_pad = 4,
        -- width = { 'full', 'block', 'full', 'block' },
      },

      quote = { icon = '▶' },

    }

    -- ▩-> 2 keymap
    vim.keymap.set({'n'},'<leader>rm', function() require('render-markdown').toggle() end,{desc=':RenderMarkdown toggle'})

    -- ▩-> 3 end
  end,
}

