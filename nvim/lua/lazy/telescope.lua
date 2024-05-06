
-- $vimfiles/nvim/lua/lazy/telescope.lua

--  :checkhealth telescope
--  :help telescope
--  :Telescope help_tags
--  $lazy/telescope.nvim/doc/telescope.txt
--  Shows keymaps:
--   insert mode: <c-/>
--   normal mode: ?
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
      require('telescope').setup{ -- :help telescope.setup()
        defaults = {
          layout_config = { vertical = { preview_height = 0.3, }, },
          layout_strategy='vertical',
          path_display={'truncate'},
        },
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_cursor(),
        -- pickers = {}
          },
        },
        require("telescope").load_extension("live_grep_args")
      }
      pcall(require('telescope').load_extension, 'fzf')
      local builtin = require 'telescope.builtin' -- :help telescope.builtin

      -- shell
      vim.keymap.set({'n'},'<c-o>',builtin.oldfiles,{desc='telescope Oldfiles'})
      vim.keymap.set({'n'},'<s-f1>',function() builtin.jumplist { fname_width=50} end,
        {desc='telescope jump list entries'})
     vim.keymap.set({'i','n','v'},'<f8>',builtin.command_history,{desc='telescope command history'})
      vim.keymap.set({'n','i','v'},'<f9>',builtin.search_history,{desc='telescope search history'})
      vim.keymap.set({'n'},'<leader><leader>g',function()
          vim.cmd('cd %:p:h') vim.cmd('pwd') vim.fn.StripStoreCurSel()
          builtin.grep_string({search=vim.api.nvim_eval("g:strippedSearch")}) end,
        {desc='move cwd to file\'s and telescope grep current search'})
      vim.keymap.set({'n'},'<leader><leader>r',function() vim.cmd('Rooter')
          builtin.grep_string({search=vim.api.nvim_eval("g:strippedSearch")}) end,
        {desc='move cwd to project Root and telescope grep current search'})
      vim.keymap.set({'n'},'<leader>j',function() builtin.find_files { cwd="$DJH"} end,
        {desc='telescope files in JH'})
      vim.keymap.set({'n'},'<leader>tm',builtin.man_pages,{desc='Telescope Man pages'})

      --- telescope
      vim.keymap.set({'n'},'<leader>tp',builtin.resume,{desc='Telescope resume Previous picker'})

      -- vim stuff
      vim.keymap.set({'n'},'<f1>',builtin.buffers,{desc='Telescope Buffers'})
      vim.keymap.set({'n'},'<leader>td',builtin.diagnostics,{desc='Telescope Diagnostics'})
      vim.keymap.set({'n'},'<leader>th',builtin.help_tags,{desc='Telescope Helptags'})
      vim.keymap.set({'n'},'<leader>tk',builtin.keymaps,{desc='Telescope vim normal mode Keymaps'})
      vim.keymap.set({'n'},'<leader>tt',builtin.filetypes,{desc='Telescope vim fileTypes'})
      vim.keymap.set({'n'},'<leader>tv',builtin.vim_options,{desc='Telescope Vim options'})
      vim.keymap.set({'n'},'<leader>zs',builtin.spell_suggest,
        {desc='Telescope Spelling suggestion for current word (as opposed to  z='})

    end,
  },
}

