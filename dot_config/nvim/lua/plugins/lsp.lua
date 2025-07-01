return {

  { -- quotes auto pair
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },

  { -- auto completion
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    lazy = false,
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        sources = {
          { name = "nvim-lsp" },
          { name = "buffer" },
          { name = "path" },
        },
        mapping = {
          ["<CR>"] = cmp.mapping.confirm({select = true}),
          ["<TAB>"] = cmp.mapping.select_next_item(),
          ["<S-TAB>"] = cmp.mapping.select_prev_item(),
        },
      })
    end,
  },

  { -- lsp manager
    "williamboman/mason.nvim",
    lazy = false,
    config = true,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local on_attach = function(client, bufnr)
        require("config.keymaps-lsp")
      end
      require("lspconfig").clangd.setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
    end,
  },

  {
    "nvimdev/lspsaga.nvim",
    config = true,
  }

}
