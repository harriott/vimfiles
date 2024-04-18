
--  :help telescope
--  :Telescope help_tags
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
    config = function()
      require('telescope').setup { -- :help telescope.setup()
        defaults = {
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
      local live_grep_args_shortcuts = require("telescope-live-grep-args.shortcuts")
        vim.keymap.set("n", "<s-f3>", live_grep_args_shortcuts.grep_word_under_cursor)
          -- only from cwd and after selecting an area
      vim.keymap.set({'i','n','v'},'<f8>',builtin.command_history,{desc='telescope command history'})
      vim.keymap.set({'n'},'<f9>',builtin.search_history,{desc='telescope search history'})
      vim.keymap.set({'i','v'},'<f9>','<Esc>:Telescope search_history<CR>',{desc='telescope search history'})
      vim.keymap.set({'n'},'<c-o>',builtin.oldfiles,{desc='telescope Oldfiles'})
      vim.keymap.set({'n'},'<leader>j',function() builtin.find_files { cwd="$DJH"} end,
        {desc='telescope files in JH'})
      vim.keymap.set({'n'},'<leader>tb',builtin.buffers,{desc='Telescope Bbuffers'})
      vim.keymap.set({'n'},'<leader>td',builtin.diagnostics,{desc='Telescope Diagnostics'})
      vim.keymap.set({'n'},'<leader>th',builtin.help_tags,{desc='Telescope Helptags'})
      -- vim.keymap.set({'n'},'<leader>tj',builtin.jumplist,{desc='Telescope Jump list entries'})
      vim.keymap.set({'n'},'<leader>tj',function() builtin.jumplist { fname_width=50} end,
        {desc='Telescope Jump list entries'})
      vim.keymap.set({'n'},'<leader>tk',builtin.keymaps,{desc='Telescope vim normal mode Keymaps'})
      vim.keymap.set({'n'},'<leader>tf',builtin.find_files,{desc='Telescope Files from cwd'})
      vim.keymap.set({'n'},'<leader>tg',builtin.git_files,{desc='Telescope search in Git ls-files'})
      vim.keymap.set({'n'},'<leader>tm',builtin.man_pages,{desc='Telescope Man pages'})
      vim.keymap.set({'n'},'<leader>tp',builtin.resume,{desc='Telescope resume Previous picker'})
      vim.keymap.set({'n'},'<leader>tr',builtin.live_grep,{desc='Telescope Ripgrep in cwd'})
      vim.keymap.set({'n'},'<leader>ts',builtin.spell_suggest,{desc='Telescope Spelling suggestion for current word'})
      vim.keymap.set({'n'},'<leader>tt',builtin.filetypes,{desc='Telescope vim fileTypes'})
      vim.keymap.set({'n'},'<leader>tv',builtin.vim_options,{desc='Telescope Vim options'})
      -- vim.keymap.set({'n'},'<leader>tw',builtin.grep_string,{desc='Telescope grep current Word in cwd'})
      -- vim.keymap.set({'n'},'<leader>tw','zy:Telescope grep_string default_text=<c-r>z<cr>',{desc='Telescope grep current selection in cwd'})
      -- vim.keymap.set({'n'},'<leader>tw',":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
    end,
  },
}

