-- vim: set fdl=3:

-- $vfn/lua/lazy/treesitter.lua
--  called by  $vfn/lua/init.lua  which also defines  GetTSParsers()
--  $lazy/nvim-treesitter/doc/nvim-treesitter.txt

return {
  { 'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    priority = 1000,

    opts = {
      -- auto_install = true, -- pull in parsers without asking
        -- can't set this because
        --  *.tex  files throw error in  /usr/share/nvim/runtime/filetype.lua
        --   even with  latex  parser disabled
        --   couldn't find any cause in a stripped-down nvim
        --   would perhaps be fixed as per  tree-sitter-latex
      ignore_install = { 'markdown' },

      highlight = { -- parser configurations - see  $vfn/lua/init.lua
        -- enable = true, -- when true, large md's fold slowly
        disable = {'bash','lua','markdown','muttrc','vim',},
          -- large md's fold slowly
          -- my  lua  &  vim  fold syntax are definitively lost
        enable = {'perl',},
          -- bad
            -- diff      layout isn't preferable
            -- muttrc    is much worse than Vim's
            -- python    is better
            -- tmux      is worse than Vim's
            -- tsv       get weird highlighting artefacts
            -- vimdoc    is less highlighted
            -- yaml      is dulled, I prefer Vim's
          -- markdown  backticks are concealed
          -- no effect: bash, perl, xml
        additional_vim_regex_highlighting = {'markdown','xml',},
          -- keep my highlighting changes
            -- my highlighting ain't preserved: bash, lua, vim
            -- keeps my xml folding
      },

      incremental_selection = {
        disable = { 'markdown', }, -- bad: large md's fold slowly
        enable = { 'perl', },
        keymaps = { init_selection = "gn",
          node_incremental = "gi", scope_incremental = "gs", node_decremental = "gd", }, },

      indent = { disable = { 'markdown', }, },
    },

    config = function(_, opts)
      if vim.fn.has("win64") == 1 then
        require('nvim-treesitter.install').prefer_git = false
      else
        require('nvim-treesitter.install').prefer_git = true
      end
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}

