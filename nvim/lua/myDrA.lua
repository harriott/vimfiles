-- vim: fdl=1:

-- https://harriott.github.io/ - Thu 18 Jun 2026

-- $vfn/lua/myDrA.lua
--  conditionally required by  $vfn/init.lua
--  =e ($vfv/ftplugin/lua.vim)

-- ▩-> 1 lazy.nvim 0 bootstrap
-- $lazy/lazy.nvim/doc/lazy.nvim.txt
-- :h lazy.nvim  internal links broken by fancy glyphs, so search manually
require 'lazy/bootstrap'

-- ▩-> 1 lazy.nvim 1
-- :Lazy update
-- can  rm $nvim/lazy-lock.json  and it'll be rebuilt
-- in this file, :UrlView lazy
require('lazy').setup(
  -- ▩--> nvim packages
  {
    -- ▩---> direct calls
    {'chaneyzorn/spellwand.nvim'},
    -- {'gelguy/wilder.nvim', config=function() end,},
    -- {'kevinhwang91/nvim-bqf', ft = 'qf'},
      -- $lazy/nvim-bqf/doc/bqf.txt
      -- <tab>/<s-tab>  toggles items, then  zn  remakes only those marked, zN  those not marked
    {'HiPhish/rainbow-delimiters.nvim'}, -- parentheses slightly less visible but easier to distinguish
    {'JoosepAlviste/nvim-ts-context-commentstring'}, -- recognition of code blocks
      -- $lazy/nvim-ts-context-commentstring/doc/nvim-ts-context-commentstring.txt
    {'lewis6991/gitsigns.nvim',config=function() require'gitsigns'.setup() end,lazy=false},
      -- $lazy/gitsigns.nvim/doc/gitsigns.txt
      -- :Gitsigns toggle_signs  ' :se rnu
      -- provides signs in the  signcolumn
    {'MagicDuck/grug-far.nvim', config = function() require('grug-far').setup({}); end, },
      -- $lazy/grug-far.nvim/README.md
      -- :GrugFar
    {'nacro90/numb.nvim', config = function() require('numb').setup() end, },
      -- :N  briefly centers around line N
    -- {'numToStr/Comment.nvim',opts={},},
    {'sindrets/diffview.nvim'},
      --  $lazy/diffview.nvim/doc/diffview.txt
      --  :DiffviewFileHistory %
        --  Tab/Shift-Tab  cycles through commit pairs in the repository, latest always at right
      --  :DiffviewClose
      --  g?
    {'tzhouhc/virt-counter.nvim',
      opts = {
        format = function(lines, words, chars)
          return string.format("%dl %dw %dc", lines, words, chars)
        end,
        highlight_group = "NonText",
      }, },
      -- lua require("virt-counter").disable()
      -- lua require("virt-counter").enable()
    {'yorickpeterse/nvim-pqf', config = function() require('pqf').setup() end, },
      -- $lazy/nvim-pqf/README.md - prettier quickfix & location list windows
    {'wurli/visimatch.nvim', opts = {} },
    -- ▩---> moduled
    -- $vfn/lua/lazy
    require'lazy/alpha-nvim',
    require'lazy/auto-session',
    require'lazy/boole_nvim',
    require'lazy/bufferline_nvim',
    -- require'lazy/catppuccin',
    -- require'lazy/Comment_nvim',
    -- require'lazy/csvview_nvim',
    require'lazy/close-buffers_nvim',
    require'lazy/dashboard-nvim',
    require'lazy/fzf-lua',
    require'lazy/harpoon',
    require'lazy/helpview_nvim',
    require'lazy/indent-blankline_nvim',
    -- require'lazy/interestingwords',
    require'lazy/leap',
    require'lazy/lualine',
    require'lazy/markdown-preview',
    -- require'lazy/mistake_nvim', -- auto spell-corrects
    -- require'lazy/neogit',
    -- require'lazy/nvim-hlslens',
    require'lazy/nvim-bqf',
    require'lazy/nvim-cmp',
    require'lazy/nvim-colorizer_lua',
    require'lazy/nvim-scrollview',
    require'lazy/nvim-surround',
    require'lazy/nvim-notify',
    require'lazy/nvim-tree',
    require'lazy/nvim-web-devicons',
    require'lazy/oil',
    require'lazy/outline_nvim',
    -- require'lazy/rainbow_csv_nvim',
    require'lazy/render-markdown_nvim',
    -- require'lazy/tabby_nvim',
    require'lazy/snipe_nvim',
    require'lazy/snipe-spell',
    require'lazy/stay-centered_nvim',
    require'lazy/telescope_nvim', -- something in here slowing folding of large md's
      require'lazy/telescope-frecency_nvim',
      require'lazy/telescope-fzf-native_nvim',
      require'lazy/telescope-everything_nvim',
      require'lazy/nvim-neoclip',
    require'lazy/ts-comments_nvim',
    require'lazy/typescript-tools_nvim',
    require'lazy/trouble_nvim',
    require'lazy/undotree',
    require'lazy/urlview_nvim',
    require'lazy/vim-illuminate',
    require'lazy/vindent_nvim',
    -- ▩---> nvim-lspconfig
    require('lazy/nvim-lspconfig'),
      -- $lazy/nvim-lspconfig/lsp - code for each LSP
      {'mason-org/mason.nvim', config=function() require'mason'.setup() end,},
        -- $lazy/mason.nvim/doc/mason.txt
        -- :checkhealth mason
        -- :Mason
          -- :unmap X  would free (from  vim-buffing-wheel) for X'ing (uninstalling) packages
          -- g?  toggles help
        -- :MasonLog (~/.local/state/nvim/mason.log)
        -- for  $vfn/lua/lazy/nvim-lspconfig.lua
        -- packages directory
          -- (= $MASON/packages) can be deleted if something won't install
          -- g $nvmp
          -- r $nvmp
      {'mason-org/mason-lspconfig.nvim',
        -- $lazy/mason-lspconfig.nvim/doc/mason-lspconfig.txt
        -- $lazy/mason-lspconfig.nvim/lua/mason-lspconfig/filetype_mappings.lua
          -- usage of LSPs by filetype
         config=function() require('mason-lspconfig').setup{automatic_enable = false} end,},
      require('lazy/lspsaga'), -- excellent breadcrumbs, among other things
    -- ▩---> nvim-treesitter
    require'lazy/nvim-treesitter' -- $vfn/lua/lazy/nvim-treesitter.lua
      -- 'nvim-treesitter/nvim-treesitter-context',
        -- *.lua  not perfect, even when  parser enabled
        -- context.vim  works better
  -- ▩--> post-setup
  },
  { performance = { reset_packpath = false, },
    -- allowing continued access to  ~/.config/nvim/pack
    --  if commented out will get errors about access to  plugins.vim
    ui = { icons = vim.g.have_nerd_font and {} or {
        -- :lua print(vim.g.have_nerd_font)
        cmd = '⌘',
        config = '🛠',
        event = '📅',
        ft = '📂',
        init = '⚙',
        keys = '🗝',
        plugin = '🔌',
        runtime = '💻',
        require = '🌙',
        source = '📄',
        start = '🚀',
        task = '📌',
        lazy = '💤 ',
      -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
      }, }, } -- no comma!
)
-- somehow breaks  vim-hexokinase
-- somehow kills nvim's access to  /usr/bin/fzf

-- ▩-> 2 for lspsaga
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('LspMappings', {}),
  callback = function(ev)
    vim.keymap.set('n','<leader>lo','<cmd>Lspsaga outline<cr>',
      {buffer=ev.buf,desc='Lspsaga outline'})
  end,}) -- q
-- can't figure how to include this in my  $vfn/lua/lazy/lspsaga.lua

-- ▩-> 2 for nvim-notify
vim.notify('ready for :Notifications')

-- ▩-> 2 for vim.lsp
-- $cGRs/d-CP/d-Vim-Nvim/r-neovim-neovim/runtime/doc/lsp.txt
vim.keymap.set({'n'},'<leader>D',function() vim.diagnostic.reset(nil, vim.api.nvim_get_current_buf()) end, {desc='cleared Diagnostics'})
vim.keymap.set({'n'},'<leader>S','<cmd>che vim.lsp<cr>', {desc=':checkhealth vim.lsp'})

-- $lazy/nvim-lspconfig/doc/configs.md  has notes for each  LSP
vim.lsp.enable({'astro'}) -- $vfn/lsp/astro.lua
vim.lsp.enable({'bashls'}) -- $vfn/lsp/bashls.lua
-- vim.lsp.enable({'ts_ls'}) -- $vfn/lsp/ts_ls.lua
vim.lsp.enable({'lemminx'}) -- $vfn/lsp/lemminx.lua
-- vim.lsp.enable({'ltex'}) -- $vfn/lsp/ltex.lua
vim.lsp.enable({'ltex_plus'}) -- $vfn/lsp/ltex_plus.lua
vim.lsp.enable({'lua_ls'}) -- $vfn/lsp/lua_ls.lua
vim.lsp.enable({'mdx_analyzer'})
vim.lsp.enable({'mutt_ls'}) -- $vfn/lsp/mutt_ls.lua
vim.lsp.enable({'perlnavigator'}) -- $vfn/lsp/perlnavigator.lua
vim.lsp.enable({'powershell_es'}) -- $vfn/lsp/powershell_es.lua
vim.lsp.enable({'pyright'}) -- $vfn/lsp/pyright.lua
-- vim.lsp.enable({'spellwand'}) -- $vfn/lsp/spellwand.lua
vim.lsp.enable({'sqls'}) -- $vfn/lsp/pyright.lua
vim.lsp.enable({'texlab'}) -- $vfn/lsp/texlab.lua
vim.lsp.enable({'ts_ls'}) -- $vfn/lsp/ts_ls.lua
vim.lsp.enable({'typos_lsp'}) -- $vfn/lsp/typos_lsp.lua
vim.lsp.enable({'vimls'}) -- $vfn/lsp/vimls.lua
-- unclear what's the benefit of LuaDoc Annotations
-- try
  -- emmet-language-server (for  css, html, less, sass, scss)
  -- nginx_language_server
  -- phpactor
  -- vscode-html-languageservice  for  html
  -- vscode-json-languageservice  for  json
  -- yamlls

-- -- ▩-> 2 for wilder
-- vim.cmd('call wilder#setup({'modes': [':', '/', '?']})')
-- vim.cmd('call wilder#set_option('renderer', wilder#popupmenu_renderer({ 'highlighter': wilder#basic_highlighter(), }))')
-- -- but it's broken...

-- ▩-> 2 nvim-treesitter parsers - Neovim 0.11.x
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
end -- lua GetTSParsers(), then update the :TSInstallInfo  lists
-- on MSWin do these in  x64 Native Tools Command Prompt

-- ▩-> 2 nvim-treesitter parsers - on unix
-- $vimfiles/settings-active-nvim/unix-TSInstallInfo-DOP3040D11S.txt
-- $vimfiles/settings-active-nvim/unix-TSInstallInfo-sbMb.txt
-- /usr/lib/tree_sitter  seem slightly outdated
-- r $lazy/nvim-treesitter/parser - when neovim 11
-- r ~/.local/share/nvim/site/parser

-- ▩-> 2 nvim-treesitter parsers - on win64
  -- $vimfiles/settings-active-nvim/win64-TSInstallInfo-HPEB840G37.txt
  -- fd parser$ $HADL\nvim-data
  -- g $lazy\nvim-treesitter\parser - when neovim 11

