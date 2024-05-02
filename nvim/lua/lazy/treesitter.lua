-- vim: set fdl=1:

-- $vimfiles/nvim/lua/lazy/treesitter.lua
--  called by  $vimfiles/nvim/lua/init.lua

return {
  { 'nvim-treesitter/nvim-treesitter',
    -- build = ':TSUpdate',
    priority = 1000,
    opts = {
      -- auto_install = true, -- pulls in parsers without asking
        -- *.tex  files throw error in  /usr/share/nvim/runtime/filetype.lua
        --  even with  latex  parser disabled
        --  couldn't find any cause in a stripped-down nvim
      highlight = { -- parser configurations

        -- disable = { 'csv', 'diff', 'html', 'latex', 'lua', 'muttrc', 'tmux', 'yaml', },
          -- diff    layout isn't preferable
          -- muttrc  is worse than Vim's
          -- tmux    is worse than Vim's
          -- tsv     get weird highlighting artefacts
          -- yaml    is dulled, I prefer Vim's

        -- no effect: bash, perl, xml

        -- enable = { 'lua', 'markdown', 'python', 'sh', 'vim'},
          -- md      backticks are concealed
          -- python  is better
          -- additional_vim_regex_highlighting = { 'markdown', 'vim', },
            -- keep my highlighting changes

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

