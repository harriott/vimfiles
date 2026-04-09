
-- https://harriott.githubio/ - Thu 09 Apr 2026

-- $vfn/lua/lazy/nvim-treesitter.lua
--  $lazy/nvim-treesitter/doc/nvim-treesitter.txt
--  :che treesitter
--  :h nvim-treesitter-commands
--  $vfn/lua/init.lua > parsers

-- ▩-> return {
return {
-- $ to switch version, sudo rm -r $lazy/nvim-treesitter

  -- ▩--> nvim-treesitter  for  nvim 11
  { 'nvim-treesitter/nvim-treesitter',
    branch = 'master', -- locked legacy branch for  Neovim 0.11.x
    cond = vim.fn.has('nvim-0.12.0') == 0,
    lazy = false,
    build = ':TSUpdate',

    config = function()
      -- ▩---> 0 nvim-treesitter.configs  setup
      require'nvim-treesitter.configs'.setup {
        -- auto_install = true, -- pull in parsers without asking
          -- can't set this because
          --  *.tex  files throw error in  /usr/share/nvim/runtime/filetype.lua
          --   even with  latex  parser disabled
          --   couldn't find any cause in a stripped-down nvim
          --   would perhaps be fixed as per  tree-sitter-latex
        ignore_install = { 'markdown' },

        highlight = { -- parser configurations - see  $vfn/lua/init.lua
          enable = false,
          -- enable = true, -- when true, large md's fold slowly
          -- disable = {'bash','csv','lua','markdown','muttrc','tsv','vim',},
            -- csv  overrides  csvview_nvim, Rainbow CSV, rainbow_csv.nvim
            -- large md's fold slowly
            -- my  lua  &  vim  fold syntax are definitively lost
            -- tsv  overrides  Rainbow CSV
          -- enable = {'perl',},
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
          -- additional_vim_regex_highlighting = {'markdown','xml',},
            -- keep my highlighting changes
              -- my highlighting ain't preserved: bash, lua, vim
              -- keeps my xml folding
          },

        incremental_selection = {
          disable = { 'markdown', }, -- bad: large md's fold slowly
          enable = { 'perl', },
          keymaps = { init_selection = "gn",
            node_incremental = "gi", scope_incremental = "gs", node_decremental = "gd", },
          },

        indent = { disable = { 'markdown', }, },
      }

      -- ▩---> 1 nvim-treesitter.install  through to  end,},
      if vim.fn.has("win64") == 1 then
        require('nvim-treesitter.install').prefer_git = false
      else
        require('nvim-treesitter.install').prefer_git = true
      end

    end,
  },

  -- ▩--> nvim-treesitter  for  nvim 12
  { 'nvim-treesitter/nvim-treesitter',
    branch = 'main', -- maybe not needed
    cond = vim.fn.has('nvim-0.12.1') == 1 and vim.fn.has("win64") == 0,
    lazy = false,
    build = ':TSUpdate',

    config = function()
      -- require('nvim-treesitter').install{'rust'} -- for testing (rm ~/.local/share/nvim/site/parser/rust.so)
      require('nvim-treesitter').install{'bash','gnuplot','lua','markdown','perl','python','query','sh','vim','vimdoc'} -- they go to  ~/.local/share/nvim/site/parser

      require('nvim-treesitter').setup { }
    end,
  },

  -- ▩--> nvim-treesitter-context
  { 'nvim-treesitter/nvim-treesitter-context',
  }, -- marginally useful - try in  $onGH/FM-DirLVF/DirLVF.py

-- ▩-> return }
  }

