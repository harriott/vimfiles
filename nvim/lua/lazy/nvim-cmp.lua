--
-- $vfn/lua/lazy/nvim-cmp.lua
-- started from  $DCGRs/d-CP/d-Vim-Nvim/r-dam9000-kickstart-modular.nvim/lua/kickstart/plugins/cmp.lua

return {
  { 'hrsh7th/nvim-cmp',
    dependencies = {
      'dmitmel/cmp-cmdline-history',
      'f3fora/cmp-spell',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/vim-vsnip',
      { 'L3MON4D3/LuaSnip',
        build = (function()
          if vim.fn.has 'win64' == 1 or vim.fn.executable 'make' == 0 then return end
          return 'make install_jsregexp'
        end)(),
      },
      'micangl/cmp-vimtex',
      'onsails/lspkind.nvim',
      'ray-x/cmp-treesitter',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp-signature-help',
    },
    config = function()
      -- See `:h cmp`
      local capabilities = require('cmp_nvim_lsp').default_capabilities() -- cmp-nvim-lsp
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'
        luasnip.config.setup {}
      local lspkind = require 'lspkind'

      cmp.setup {
        completion = { completeopt = 'menu,menuone,noinsert' },
        enabled = function()
          if vim.bo.filetype == "TelescopePrompt" then return false end
          return vim.g.cmp_on
        end,
        formatting = {
          expandable_indicator = true,
          fields = { "kind", "abbr", },
          format = function(entry, vim_item)
            local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
            local strings = vim.split(kind.kind, "%s", { trimempty = true })
            kind.kind = " " .. (strings[1] or "") .. " "
            return kind
          end, },
        mapping = cmp.mapping.preset.insert {
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-y>'] = cmp.mapping.confirm { select = true },
          ['<C-Space>'] = cmp.mapping.complete {},
          ['<C-l>'] = cmp.mapping(function()
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            end
          end, { 'i', 's' }),
          ['<C-h>'] = cmp.mapping(function()
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            end
          end, { 'i', 's' }),
        },
        snippet = { expand = function(args) luasnip.lsp_expand(args.body) end, },
        sources = cmp.config.sources( {
          { name = 'buffer',
            option = {
              get_bufnrs = function() return vim.api.nvim_list_bufs() end, -- all buffers
              -- keyword_length = 3, -- the default trigger length
            }, },
          -- { name = 'cmdline_history' },
          { name = 'lazydev', group_index = 0, }, -- :LazyDev
          { name = 'nvim_lsp' }, -- cmp-nvim-lsp
          { name = 'luasnip' },
          { name = 'nvim_lsp_signature_help' },
          { name = "spell", -- cmp-spell
            option = {
              keep_all_entries = false,
              enable_in_context = function() return true end,
              preselect_correct_word = true,
            }, }, -- doesn't do anything in French
          { name = 'treesitter' },
          { name = 'vimtex', },
        }), -- triggers the popups
      }

      cmp.setup.cmdline('/', { sources = { { name = 'cmdline_history' }, }, })
      cmp.setup.cmdline(':', { sources = { { name = 'cmdline_history' }, }, })

      vim.keymap.set("n", "<leader>cp", function() -- useful for testing
        vim.g.cmp_on = not vim.g.cmp_on
        if vim.g.cmp_on then vim.notify('nvim-cmp on') else vim.notify('nvim-cmp off') end
      end)
      vim.keymap.set("n", "<leader>ss", function() -- useful for  cmp-spell
        vim_opt_toggle("spell") end)
    end,
  },
}

