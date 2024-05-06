-- vim: set fdl=1:

-- $vimfiles/nvim/lua/lazy/treesitter.lua
--  called by  $vimfiles/nvim/lua/init.lua  which also defines  GetTSParsers()

return {
  { 'nvim-treesitter/nvim-treesitter',
    -- build = ':TSUpdate',
    priority = 1000,
    opts = {
      -- auto_install = true, -- pull in parsers without asking
        -- can't set this because
        --  *.tex  files throw error in  /usr/share/nvim/runtime/filetype.lua
        --   even with  latex  parser disabled
        --   couldn't find any cause in a stripped-down nvim
        --   would perhaps be fixed as per  tree-sitter-latex

      highlight = { -- parser configurations - see  $vimfiles/nvim/lua/init.lua
        enable = true,
        disable = { 'diff', 'lua', 'markdown', 'muttrc', 'perl', 'tmux', 'tsv', 'vim', 'yaml', },
          -- bad
            -- diff      layout isn't preferable
            -- markdown  backticks are concealed
            -- muttrc    is worse than Vim'.s
            -- perl      aint much better than Vim's
            -- python    is better
            -- tmux      is worse than Vim's
            -- tsv       get weird highlighting artefacts
            -- yaml      is dulled, I prefer Vim's
          -- no effect: bash, perl, xml
        -- additional_vim_regex_highlighting = { 'markdown', },
          -- keep my highlighting changes
            -- markdown : folding is delayed in big files
            -- my highlighting aint preserved: lua, perl, vim

      },
    },
    config = function(_, opts)
      if package.config:sub(1,1) == "\\" then
        require('nvim-treesitter.install').prefer_git = false
      else
        require('nvim-treesitter.install').prefer_git = true
      end
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}

