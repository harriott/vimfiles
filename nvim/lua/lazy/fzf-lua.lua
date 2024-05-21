
-- $vimfiles/nvim/lua/lazy/fzf-lua.lua

-- :FzfLua Command
-- :FzfLua args
-- :FzfLua autocmds
-- :FzfLua blines
-- :FzfLua buffers
-- :FzfLua changes
-- :FzfLua command_history
-- :FzfLua commands
-- :FzfLua files
-- :FzfLua filetypes
-- :FzfLua helptags
-- :FzfLua highlights
-- :FzfLua jumps
-- :FzfLua keymaps
-- :FzfLua lines
-- :FzfLua loclist
-- :FzfLua manpages
-- :FzfLua marks
-- :FzfLua menus
-- :FzfLua oldfiles
-- :FzfLua packadd
-- :FzfLua quickfix
-- :FzfLua registers
-- :FzfLua search_history
-- :FzfLua spell_suggest
-- :FzfLua tabs
-- :FzfLua tagstack
-- f1 = toggle help
-- f2 = toggle fullscreen
-- f4 = toggle preview

return { "ibhagwan/fzf-lua",
  config = function()
    require("fzf-lua").setup({})
    vim.keymap.set({'n'},'<leader><f1>','<Cmd>FzfLua buffers<CR>')
  end,
}

