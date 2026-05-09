-- vim: set fdl=4:

-- https://harriott.github.io/ - sam 09 mai 2026

-- $vfn/lua/lazy/telescope-frecency_nvim.lua

-- $lazy/telescope-frecency.nvim/doc/telescope-frecency.txt
--  :FrecencyDelete  " a file from the database
--  :FrecencyValidate!  " clean DB without confirmation
--  :Telescope frecency

-- $HADL\nvim-data\file_frecency.bin.lock  wouldn't delete until a reboot

return { 'nvim-telescope/telescope-frecency.nvim',
  lazy = false,  -- for  db_safe_mode
  config = function()
    require'telescope'.load_extension 'frecency'
    -- configuration is done in  $vfn/lua/lazy/telescope.lua

    -- vim.keymap.set('n','<c-p>',"<Cmd>echo 'frecent files'<bar>Telescope frecency<CR>")
    vim.keymap.set({'n'},'<c-p>',function()
        vim.cmd("echo 'frecent files'")
        require'telescope'.extensions.frecency.frecency{} -- :h telescope-frecency-usage
          -- {ignore_patterns={"*lastVimDirectory",},} doesn't have any effect
      end,
      {desc=':Telescope frecency'})
    -- easier to read than  :Telescope oldfiles
  end,
}

