
-- $vimfiles/nvim/lua/lazy/telescope-frecency.lua

-- $lazy/telescope-frecency.nvim/doc/telescope-frecency.txt
-- :FrecencyDelete  " a file from the database
-- :Telescope frecency

-- $HADL\nvim-data\file_frecency.bin.lock  wouldn't delete until a reboot

return { 'nvim-telescope/telescope-frecency.nvim',
  lazy = false,  -- for  db_safe_mode
  config = function()
    require('telescope').load_extension 'frecency'
    -- configuration is done in  $vimfiles/nvim/lua/lazy/telescope.lua

    -- vim.keymap.set('n','<c-p>',"<Cmd>echo 'frecent files'<bar>Telescope frecency<CR>")
    vim.keymap.set('n','<c-p>',function() vim.cmd("echo 'frecent files'")
      -- require'telescope'.extensions.frecency.frecency{ignore_patterns={"*lastVimDirectory",},} end, -- doesn't have any effect, and anyway would clobber the system-dependent defaults...
      require'telescope'.extensions.frecency.frecency{} end,
      {desc='Telescope frecency'})
    -- easier to read than  :Telescope oldfiles
  end,
}

