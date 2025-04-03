
-- $vfn/lua/lazy/vim-illuminate.lua

return { 'RRethy/vim-illuminate',
  config = function() -- $vfvp/packs-cp-all/opt/vim-illuminate/README.md
    providers = { 'lsp', 'treesitter', 'regex', }
    delay = 100
    filetype_overrides = {}
    filetypes_denylist = { 'dirbuf', 'dirvish', 'fugitive', }
    filetypes_allowlist = {}
    modes_denylist = {}
    modes_allowlist = {}
    providers_regex_syntax_denylist = {}
    providers_regex_syntax_allowlist = {}
    under_cursor = true
    large_file_cutoff = 10000
    large_file_overrides = nil
    min_count_to_highlight = 1
    should_enable = function(bufnr) return true end
    case_insensitive_regex = false
    disable_keymaps = false
  end
}

