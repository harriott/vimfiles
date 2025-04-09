
-- $vfn/lua/lazy/nvim-treesitter.lua
--  $lazy/nvim-treesitter/doc/nvim-treesitter.txt
--  :che treesitter
--  :h nvim-treesitter-commands

-- ▩-> lazy
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

      function GetTSParsers()
        -- vim.cmd 'TSInstall bash'
        -- vim.cmd 'TSInstall gnuplot'
        -- vim.cmd 'TSInstall lua'
          -- error (vim-illuminate) if open a  *.lua  without this parser present
        -- vim.cmd 'TSInstall markdown'
        -- vim.cmd 'TSInstall perl'
        -- vim.cmd 'TSInstall python'
        -- vim.cmd 'TSInstall query'
        -- vim.cmd 'TSInstall sh'
        -- vim.cmd 'TSInstall vim'
        -- vim.cmd 'TSInstall vimdoc'
      end -- lua GetTSParsers(), then update the :TSInstallInfo lists
      -- on MSWin do these in  x64 Native Tools Command Prompt
      -- :TSUpdate  updates all parsers

      if vim.fn.has("win64") == 1 then
        require('nvim-treesitter.install').prefer_git = false
      else
        require('nvim-treesitter.install').prefer_git = true
      end
      require('nvim-treesitter.configs').setup(opts)

      vim.keymap.set({'n'},'<localleader>t',function() vim.treesitter.stop() print("treesitter highlights off until refresh") end,{desc='disable Neovim\'s treesitter highlights.scm'}) -- see  $vfv/after/syntax/lua.vim
    end,
  },
}

-- ▩-> parsers on unix
  -- $vfs/nvim-unix-TSInstallInfo-DOP3040D11S.txt
  -- $vfs/nvim-unix-TSInstallInfo-sbMb.txt
  -- /usr/lib/tree_sitter
  -- r $lazy/nvim-treesitter/parser

-- ▩-> parsers on win64
  -- $vfs/nvim-win64-TSInstallInfo-HPEB840G37.txt
  -- g $lazy\nvim-treesitter\parser

