-- vim: set fdl=3:

-- $vfn/lsp/ltex.lua  LTeX Language Server  for  LanguageTool
--  for human languages within a few markup languages
--  :MasonInstall ltex-ls
--  :MasonUninstall ltex-ls
--  enabled in  $vfn/lua/init.lua
--  can take a while, then underlines possible errors
--  diagnostics are labelled  LTeX
--  ignores  nospell
--  :LspStop ltex

local language_id_mapping = {
  bib = 'bibtex',
  plaintex = 'tex',
  rnoweb = 'rsweave',
  rst = 'restructuredtext',
  tex = 'latex',
  pandoc = 'markdown',
  text = 'plaintext',
}

local filetypes = { 'bib', 'gitcommit', 'markdown', 'org', 'plaintex', 'rst', 'rnoweb', 'tex', 'pandoc', 'quarto', 'rmd', 'context', 'html', 'xhtml', 'mail', 'text', }

local function get_language_id(_, filetype)
  local language_id = language_id_mapping[filetype]
  if language_id then
    return language_id
  else
    return filetype
  end
end
local enabled_ids = {}
do
  local enabled_keys = {}
  for _, ft in ipairs(filetypes) do
    local id = get_language_id({}, ft)
    if not enabled_keys[id] then
      enabled_keys[id] = true
      table.insert(enabled_ids, id)
    end
  end
end

---@type vim.lsp.Config
return {
  cmd = { 'ltex-ls' },
  filetypes = filetypes,
  root_markers = { '.git' },
  get_language_id = get_language_id,
  settings = {
    ltex = {
      enabled = enabled_ids,
    },
  },
} -- based on  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/ltex.lua

