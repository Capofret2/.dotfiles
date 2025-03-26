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

require('lspsaga').setup({})
-- enable keybinds only for when lsp server available
local on_attach = function(client, bufnr)
  require('lsp-keymaps')
end

-- configure cpp clangd
lspconfig.clangd.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- configure pyright server
lspconfig.pyright.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  -- settings = {
  --   pyright = {
  --     autoImportCompletion = true,
  --     python = {
  --       analysis = {
  --         autoSearchPaths = true,
  --         useLibraryCodeForTypes = true,
  --       },
  --     },
  --   },
  -- },
  before_init = function(_, config)
    local venv = vim.fn.finddir('.venv', vim.fn.getcwd() .. ';')
    if venv ~= '' then
      config.settings.python.pythonPath = vim.fn.getcwd() .. '/' .. venv .. '/bin/python'
    end
  end,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      }
    }
  }
})

local cmp = require('cmp')

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  },
  mapping = {
    ['<CR>']    = cmp.mapping.confirm({ select = true }), -- 回车采纳补全建议
    ['<Tab>']   = cmp.mapping.select_next_item(),       -- 选择下一个建议
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),     -- 选择上一个建议
  },
  formatting = {
    fields = { 'menu', 'abbr', 'kind' }, -- 显示的字段
    max_width = 50, 
    max_height = 10, 
  },
})

