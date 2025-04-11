
-- $vfn/lua/lazy/fzf-lua.lua

-- $lazy/fzf-lua/README-Win.md
-- $lazy/fzf-lua/doc/fzf-lua-opts.txt

-- ▩-> commands
-- :FzfLua  " opens command picker
-- :FzfLua resume  " last picker
-- picker commands:
--  c-g = toggle gitignore
--  f1 = toggle help
--  f2 = toggle fullscreen
--  f4 = toggle preview

-- ▩--> buffers
-- :FzfLua blines
-- :FzfLua buffers
-- :FzfLua lines
-- :FzfLua marks

-- ▩--> edits
-- :FzfLua changes
-- :FzfLua jumps
-- :FzfLua quickfix
-- :FzfLua spell_suggest
-- :FzfLua tagstack

-- ▩--> shell
-- :exec 'FzfLua grep_cword search_paths='.$DWp
-- :exec 'lua FzfLua.grep_cword({search_paths={"'.$DWp.'","'.$TeNo.'",}})'
-- :FzfLua git_bcommits  " select and open a previous version of the buffer, as another buffer
-- :FzfLua git_files
-- :FzfLua git_status
-- :FzfLua lsp_document_diagnostics  " showing the code
-- :FzfLua lsp_definitions
-- :FzfLua manpages
-- :FzfLua oldfiles

-- ▩--> Vim
-- :FzfLua command_history
-- :FzfLua commands
-- :FzfLua args
-- :FzfLua autocmds
-- :FzfLua filetypes
-- :FzfLua helptags
-- :FzfLua highlights  " colourful
-- :FzfLua keymaps  " showing context from where they're set
-- :FzfLua loclist
-- :FzfLua nvim_options
-- :FzfLua packadd
-- :FzfLua registers
-- :FzfLua search_history

-- ▩-> configure
return { "ibhagwan/fzf-lua",
  config = function()
    require("fzf-lua").setup({})
    vim.keymap.set({'n'},'<s-f1>','<Cmd>FzfLua buffers<CR>')
    vim.keymap.set({'n'},'<leader>zd',"<Cmd>FzfLua files cwd=$DWp<CR>",{desc=':FzfLua files cwd=$DWp'})
    vim.keymap.set({'n'},'<leader>zt',"<Cmd>FzfLua files cwd=$TeNo<CR>",{desc=':FzfLua files cwd=$TeNo'})
    vim.keymap.set({'n'},'<leader>zg',"<Cmd>FzfLua files cwd=$onGH<CR>",{desc=':FzfLua files cwd=$onGH'})
  end,
}

