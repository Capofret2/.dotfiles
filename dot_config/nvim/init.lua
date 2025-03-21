vim.opt.number = true
vim.opt.clipboard = 'unnamedplus'

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'easymotion/vim-easymotion'
  use 'nvim-tree/nvim-web-devicons'
  use 'echasnovski/mini.icons'
  use 'folke/which-key.nvim'
  use 'tpope/vim-sensible'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use 'goolord/alpha-nvim'
  use { 'preservim/nerdtree', cmd = 'NERDTreeToggle' }
  use 'godlygeek/tabular'
  use 'preservim/vim-markdown'
  use 'numToStr/Comment.nvim'
end)

require('config.colors')
require('config.clipboard')
require('config.keymaps')
require('config.plugins')

