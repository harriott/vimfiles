
-- https://harriott.github.io/ - Sat 13 Apr 2024

-- $vimfiles/nvim/lua/init.lua
--  required by  $vimfiles/nvim/init.vim
--  adapted from  $GHrUse/CP/Nvim/nvim-lua-kickstart.nvim/init.lua
--  symlinked by
--   $MSwin10\mb\symlinks.ps1
--   $OSAB/bs-symlinks/jo-2-whenWM-0.sh

-- -> 0 layout
-- vim.g.have_nerd_font = true
vim.opt.cursorline = true
vim.opt.mouse = 'a' -- enable mouse mode
vim.opt.showmode = false -- don't show the mode, since it's already in the status line

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight selection on yank',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- -> 0 nVim
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>:bd!<CR>', { desc = 'Exit terminal mode and drop the buffer' })
vim.opt.hlsearch = true
vim.opt.updatetime = 250 -- decrease swap update time
vim.opt.inccommand = 'split' -- preview substitutions as you type

-- -> 1 lazy.nvim 0 bootstrap
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then -- does what?
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)
-- g $lazy
-- r $lazy.nvim/README.md

-- -> 1 lazy.nvim 1 require
require('lazy').setup({
    {'numToStr/Comment.nvim',opts={}}, -- gc  to comment visual regions/lines
    -- require 'lazy/catppuccin',
    -- require'lazy/dropbar',
    require'lazy/lualine',
    require'lazy/nvim-notify',
    require'lazy/telescope',
    require'lazy/telescope-fzf-native',
    require'lazy/treesitter',  -- $vimfiles/nvim/lua/lazy/treesitter.lua
      -- 'nvim-treesitter/nvim-treesitter-context',
        -- *.lua  not perfect, even when  parser enabled
          -- context.vim  works better
    {'williamboman/mason.nvim',config=function()require('mason').setup()end,},
      -- :che mason
      -- :LspInfo
      -- :Mason
      --  g?  toggles help
      --  r ~/.local/share/nvim/mason/packages
      {"williamboman/mason-lspconfig.nvim",config=function()require('mason-lspconfig').setup()end,},
        require'lazy/nvim-lspconfig',
  },
  {
    performance = { reset_packpath = false, },
    -- allowing continued access to  ~/.config/nvim/pack
    --  if commented out will get errors about access to  plugins.vim
    ui = {
      icons = vim.g.have_nerd_font and {} or {
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
      },
    },
  } -- no comma!
)
-- somehow breaks  vim-hexokinase
-- somehow kills nvim's access to  /usr/bin/fzf

