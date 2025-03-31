
-- $vfn/lua/lazy/nvim-tree.lua

-- $lazy/nvim-tree.lua/doc/nvim-tree-lua.txt
--  Git Integration:
--   ✗  unstaged
--   ✓  staged
--     unmerged
--   ➜  renamed
--   ★  untracked
--     deleted
--   ◌  ignored

-- :NvimTreeCollapse  to the  :cd
-- Keystrokes:
--  -    => up a directory
--  g?
--  x/p  => cut/paste
--  W    => collapse

return {
  {  "nvim-tree/nvim-tree.lua", version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons", },
    config = function()
      -- require("nvim-tree").setup {}
      local function my_on_attach(bufnr)
        local api = require "nvim-tree.api"
        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        vim.keymap.set('n', '<BS>',    api.node.navigate.parent_close,      opts('directory close'))
        vim.keymap.set('n', 'c',       api.tree.collapse_all,               opts('directory collapse here'))
        vim.keymap.set('n', 'a',       api.tree.expand_all,                 opts('directory expand all here'))
        vim.keymap.set('n', 'p',       api.node.navigate.parent,            opts('directory parent'))
        vim.keymap.set('n', '-',       api.tree.change_root_to_parent,      opts('directory up'))
        vim.keymap.set('n', '=',       api.tree.change_root_to_node,        opts('directory view only this'))
        vim.keymap.set('n', 'A',       api.fs.create,                       opts('file create'))
        vim.keymap.set('n', '<c-t>',   api.node.open.tab,                   opts('file open in new tab'))
        vim.keymap.set('n', '<c-e>',   api.node.open.replace_tree_buffer,   opts('file open in place of nvim-tree'))
        vim.keymap.set('n', '<c-x>',   api.node.open.horizontal,            opts('file open in split horizontal'))
        vim.keymap.set('n', '<c-v>',   api.node.open.vertical,              opts('file open in split vertical'))
        vim.keymap.set('n', 'uc',      api.live_filter.clear,               opts('filter clear'))
        vim.keymap.set('n', 'ui',      api.tree.toggle_gitignore_filter,    opts('filter gitignore toggle'))
        vim.keymap.set('n', 'uh',      api.tree.toggle_hidden_filter,       opts('filter hidden toggle'))
        vim.keymap.set('n', 'us',      api.live_filter.start,               opts('filter start'))
        vim.keymap.set('n', 'C',       api.fs.copy.node,                    opts('node content copy'))
        vim.keymap.set('n', 'P',       api.fs.paste,                        opts('node content paste'))
        vim.keymap.set('n', '<c-k>',   api.node.show_info_popup,            opts('node details'))
        vim.keymap.set('n', 'gb',      api.fs.copy.basename,                opts('node get name'))
        vim.keymap.set('n', 'gp',      api.fs.copy.absolute_path,           opts('node get path'))
        vim.keymap.set('n', 'O',       api.node.open.no_window_picker,      opts('node open (no picker/toggle)'))
        vim.keymap.set('n', 'o',       api.node.open.edit,                  opts('node open/toggle'))
        vim.keymap.set('n', 'R',       api.fs.rename,                       opts('node rename name'))
        vim.keymap.set('n', 'U',       api.fs.rename_full,                  opts('node rename path'))
        vim.keymap.set('n', 'J',       api.node.navigate.sibling.next,      opts('node sibling next'))
        vim.keymap.set('n', 'K',       api.node.navigate.sibling.prev,      opts('node sibling previous'))
        vim.keymap.set('n', 'q',       api.tree.close,                      opts('nvim-tree close'))
        vim.keymap.set('n', 'g?',      api.tree.toggle_help,                opts('nvim-tree help'))
        vim.keymap.set('n', 'r',       api.tree.reload,                     opts('nvim-tree refresh'))

      end
      require'nvim-tree'.setup ({help={sort_by='desc',},on_attach=my_on_attach,})
      vim.keymap.set({'i','n'},'<f10>',function()vim.cmd('NvimTreeFindFileToggle!')end,
        {desc='NvimTreeFindFileToggle!'}) -- relative to cwd
      vim.keymap.set({'n'},'<c-n>',function()vim.cmd('NvimTreeToggle')end,
        {desc='NvimTreeToggle'})
    end,
  }
}

