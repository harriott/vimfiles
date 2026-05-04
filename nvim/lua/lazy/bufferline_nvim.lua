-- vim: fdl=4:

-- https://harriott.githubio/ - Mon 20 Apr 2026

-- $vfn/lua/lazy/bufferline_nvim.lua

-- $lazy/bufferline.nvim/README.md

-- $lazy/bufferline.nvim/doc/bufferline.txt

  -- :BufferLineCloseOthers
  -- :BufferLinePickClose
  -- :BufferLinePick

  -- :h bufferline
  -- :h bufferline-highlights

  -- l-mouse  selects
  -- r-mouse  drops

  -- shows Nvim tabs as numbers at right of the bufferline

return { 'akinsho/bufferline.nvim',
  config=function()
    require'bufferline'.setup()
    local bufferline = require('bufferline')
    bufferline.setup { options = {
      numbers = function(opts)
        -- can't figure how to dim out the number
        -- return string.format('%s', opts.id) -- fullsize
        return string.format('%s', opts.lower(opts.id))
        -- return string.format('%s', opts.raise(opts.id)) --superscript
      end, } }
    vim.keymap.set({'n'},'<leader>co',"<Cmd>exe 'colo '.g:colors_name<bar>echo 'colorscheme reset'<cr>") -- if active buffer label dims out
  end,
  }
