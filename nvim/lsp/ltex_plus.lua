-- vim: set fdl=3:

-- $vfn/lsp/ltex.lua  LTeX Language Server  for  LanguageTool
--  for human languages within a few markup languages
--  :MasonInstall ltex-ls
--  :MasonUninstall ltex-ls
--  enabled in  $vfn/lua/init.lua
--  can take a while, then underlines possible errors
--  diagnostics are labelled  LTeX
--  ignores  nospell

local language_id_mapping = {
  bib = 'bibtex',
  plaintex = 'tex',
  rnoweb = 'rsweave',
  rst = 'restructuredtext',
  tex = 'latex',
  pandoc = 'markdown',
  text = 'plaintext',
}

---@type vim.lsp.Config
return {
  cmd = { 'ltex-ls-plus' },
  filetypes = { 'asciidoc', 'bib', 'context', 'gitcommit', 'html', 'markdown', 'org', 'pandoc', 'plaintex', 'quarto', 'mail', 'mdx', 'rmd', 'rnoweb', 'rst', 'tex', 'text', 'typst', 'xhtml', },
  root_markers = { '.git' },
  get_language_id = function(_, filetype) return language_id_mapping[filetype] or filetype end,
  settings = { ltex = { enabled = { 'asciidoc', 'bib', 'context', 'gitcommit', 'html', 'markdown', 'org', 'pandoc', 'plaintex', 'quarto', 'mail', 'mdx', 'rmd', 'rnoweb', 'rst', 'tex', 'latex', 'text', 'typst', 'xhtml', }, }, },
} -- based on  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/ltex_plus.lua

