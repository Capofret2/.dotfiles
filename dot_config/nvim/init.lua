require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- plugins manager

  use 'tpope/vim-sensible' -- a universal set of defaults that (hopefully) everyone can agree on

  use 'williamboman/mason.nvim' -- LSP servers, DAP servers, linters and formatters manager
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in language server client

  use 'nvim-tree/nvim-web-devicons' -- optional
  use 'nvim-tree/nvim-tree.lua'

  use 'easymotion/vim-easymotion' 
  use 'sphamba/smear-cursor.nvim' -- animate cursor motion
  use 'folke/which-key.nvim' -- hotkeys hint
  use 'goolord/alpha-nvim' -- startify
  use 'godlygeek/tabular'
  use 'numToStr/Comment.nvim' -- quick comment line/block
  use { 'catppuccin/nvim', as = 'catppuccin' } -- colorscheme
end)

require('flavors')
require('keymaps')
require('options')
require('lsp')
require('misc-setup')
