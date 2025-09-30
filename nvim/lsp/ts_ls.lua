-- vim: set fdl=1:

-- $vfn/lsp/ts_ls.lua
--  based on  $cGRs/d-CP/d-Vim-Nvim/r-J03JB-nvim_config/lsp/ts_ls.lua
--   (https://github.com/J03JB/nvim_config/blob/master/lsp/ts_ls.lua)
--  there's also the vast  $cGRs/d-CP/d-Vim-Nvim/r-neovim-nvim-lspconfig/lsp/ts_ls.lua
--  could be enabled in  $vfn/lua/init.lua, but I prefer  typescript-tools

---@type vim.lsp.Config
return {
	init_options = { hostInfo = "neovim" },
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
	single_file_support = true,
}

