
-- $vfn/lua/lazy/fzf-lua.lua

-- $lazy/fzf-lua/README-Win.md
-- $lazy/fzf-lua/doc/fzf-lua-opts.txt

-- :FzfLua Command
-- :FzfLua args
-- :FzfLua autocmds
-- :FzfLua blines
-- :FzfLua buffers
-- :FzfLua changes
-- :FzfLua command_history
-- :FzfLua commands
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
-- :FzfLua resume
-- :FzfLua search_history
-- :FzfLua spell_suggest
-- :FzfLua tabs
-- :FzfLua tagstack
-- picker commands:
--  c-g = toggle gitignore
--  f1 = toggle help
--  f2 = toggle fullscreen
--  f4 = toggle preview

return { "ibhagwan/fzf-lua",
  config = function()
    require("fzf-lua").setup({})
    vim.keymap.set({'n'},'<s-f1>','<Cmd>FzfLua buffers<CR>')
    vim.keymap.set({'n'},'<leader>zd',"<Cmd>FzfLua files cwd=$DWp<CR>",{desc=':FzfLua files cwd=$DWp'})
    vim.keymap.set({'n'},'<leader>zt',"<Cmd>FzfLua files cwd=$TeNo<CR>",{desc=':FzfLua files cwd=$TeNo'})
    vim.keymap.set({'n'},'<leader>zg',"<Cmd>FzfLua files cwd=$onGH<CR>",{desc=':FzfLua files cwd=$onGH'})
  end,
}

