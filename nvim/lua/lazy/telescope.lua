
-- $vimfiles/nvim/lua/lazy/telescope.lua

-- :checkhealth telescope
-- :help telescope
-- :Telescope help_tags
-- $lazy/telescope.nvim/doc/telescope.txt
-- Shows keymaps:
--  insert mode: <c-/>
--  normal mode: ?
-- $vimfiles/vim/ftplugin/lua-nvim.vim  maps  =k  to shoz up my keystrokes

return {
  { 'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
      { "nvim-telescope/telescope-live-grep-args.nvim" , version = "^1.0.0", },
    },
    lazy = false,  -- for  nvim-notify

    config = function()
      require'telescope'.setup{ -- :help telescope.setup()
        defaults = {
          -- file_ignore_patterns={"%.md"}, -- avoids folding delay but also makes .md's not there...
          layout_config = { vertical = { preview_height = 0.3, }, },
          layout_strategy='vertical',
          mappings = { -- because  <c-v>  is hijacked by  mswin.vim
            i = {
              ["<c-e>"] = require('telescope.actions').select_vertical,
              ["<c-v>"] = false,
            },
            n = {
              ["<c-e>"] = require('telescope.actions').select_vertical,
              ["<c-v>"] = false,
            },
          },
          path_display={'truncate'},
        },
        extensions = {
	      frecency = { db_safe_mode = false, matcher = "fuzzy", }, -- $vimfiles/nvim/lua/lazy/telescope-frecency.lua
          ['ui-select'] = {
            require'telescope.themes'.get_cursor(),
        -- pickers = {}
          },
        },
        require"telescope".load_extension("live_grep_args"),
      }
      pcall(require'telescope'.load_extension, 'fzf')
      local builtin = require 'telescope.builtin' -- :help telescope.builtin

      --------------
      -- keymaps --
      -- /^\s*vim.keymap.set({.*},'\zs.*\ze',

      -- buffers ---
      vim.keymap.set({'n'},'<f1>',function() builtin.buffers{sort_mru=true} end,{desc=':Telescope buffers'})
      -- can't diminish the distracting  :<line_number>  at end
      vim.keymap.set({'n'},'<leader>ff',builtin.current_buffer_fuzzy_find,{desc='Telescope current_buffer_fuzzy_find'})

      vim.keymap.set({'n'},'<leader>tt',builtin.treesitter,{desc=':Telescope treesitter'})
      -- can help in Lua, Python

      -- Git ---
      vim.keymap.set({'n'},'<leader>ic',builtin.git_commits,{desc=':Telescope git_commits'})
      vim.keymap.set({'n'},'<leader>ib',builtin.git_bcommits,{desc=':Telescope git_bcommits'})
      vim.keymap.set({'n'},'<leader>ii',builtin.git_status,{desc=':Telescope git_status'})


      -- LSP --
      vim.keymap.set({'n'},'<leader>ld',builtin.diagnostics,{desc=':Telescope diagnostics'})
      vim.keymap.set({'n'},'<leader>ls',builtin.lsp_document_symbols,{desc=':Telescope lsp_document_symbols'})
      vim.keymap.set({'n'},'<leader>lss',builtin.lsp_workspace_symbols,{desc=':Telescope lsp_workspace_symbols'})
      -- marginally useful:
        vim.keymap.set({'n'},'<leader>lf',builtin.lsp_definitions,{desc=':Telescope lsp_definitions'})
        vim.keymap.set({'n'},'<leader>lff',builtin.lsp_type_definitions,{desc=':Telescope lsp_type_definitions'})

      -- shell --
      vim.keymap.set({'n'},'<c-o>',builtin.oldfiles,{desc=':Telescope oldfiles no_ignore=true'})

      vim.keymap.set({'n'},'<leader><leader><f1>',function() builtin.jumplist{show_line=false} end,
        {desc='usable  :Telescope jumplist'})

      vim.keymap.set({'n'},'<leader>a',builtin.man_pages,{desc='Telescope man_pages'})

      vim.keymap.set({'n'},'<leader>j',function() builtin.find_files{cwd="$DJH"} vim.cmd("echo 'files in Dropbox/JH'") end,
        {desc='cd $DJH  then  :Telescope find_files'})

      vim.keymap.set({'n'},'<leader>lg',":Telescope live_grep_args<CR>")

      vim.keymap.set({'n'},'<leader><leader>g',function()
          vim.cmd('cd %:p:h') vim.cmd('pwd') vim.fn.StripStoreCurSel()
          builtin.grep_string({search=vim.api.nvim_eval("g:strippedSearch")}) end,
        {desc='move cwd to file\'s and  :Telescope grep_string  on current search'})

      vim.keymap.set({'n'},'<leader><leader>r',function()
          vim.cmd('Rooter') vim.fn.StripStoreCurSel()
          builtin.grep_string({search=vim.api.nvim_eval("g:strippedSearch")}) end,
        {desc=':Rooter  then  :Telescope grep_string  on current search'})

      --- telescope --
      vim.keymap.set({'n'},'<leader>pp',builtin.resume,{desc=':Telescope resume (= previous picker)'})

      -- vim stuff --
      vim.keymap.set({'n','i','v'},'<f8>',builtin.command_history,{desc=':Telescope command_history'})
      vim.keymap.set({'n','i','v'},'<f9>',builtin.search_history,{desc=':Telescope search_history'})
      vim.keymap.set({'n'},'<leader>ht',builtin.help_tags,{desc=':Telescope help_tags'})
      vim.keymap.set({'n'},'<leader>vm',builtin.keymaps,{desc=':Telescope keymaps (of normal mode)'})
      vim.keymap.set({'n'},'<leader>vf',builtin.filetypes,{desc=':Telescope fileTypes (known to  vim)'})
      vim.keymap.set({'n'},'<leader>vh',builtin.highlights,{desc=':Telescope highlights (known to  vim)'})
      vim.keymap.set({'n'},'<leader>vo',builtin.vim_options,{desc=':Telescope vim_options'})
      vim.keymap.set({'n'},'<leader>vr',builtin.registers,{desc=':Telescope registers'})
      vim.keymap.set({'n'},'<leader>ws',builtin.spell_suggest,
        {desc=':Telescope spell_suggest  for current word (as opposed to  z='})
      --------------

    end,
  },
}

