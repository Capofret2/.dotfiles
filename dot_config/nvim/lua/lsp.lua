require('mason').setup()
require('mason-lspconfig').setup({
  -- list of servers for mason to install
  ensure_installed = {
    "clangd",
  },
  -- auto-install configured servers (with lspconfig)
  automatic_installation = true, -- not the same as ensure_installed
})

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- configure cpp clangd
lspconfig.clangd.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

local cmp = require('cmp')

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- 回车采纳补全建议
    ['<Tab>'] = cmp.mapping.select_next_item(),       -- 选择下一个建议
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),     -- 选择上一个建议
  },
})

