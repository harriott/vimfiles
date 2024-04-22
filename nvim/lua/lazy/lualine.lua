
return {
  { 'nvim-lualine/lualine.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = { 'nvim-tree/nvim-web-devicons', },
    config = function()
      -- require('lualine').setup()
      require('lualine').setup{
        extensions = {'fzf','man','quickfix',},
        -- not obvious what these add
      }
    end,
    }
}

