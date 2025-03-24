vim.opt.number = true
vim.opt.clipboard = 'unnamedplus'

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'easymotion/vim-easymotion'
  use 'sphamba/smear-cursor.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'echasnovski/mini.icons'
  use 'folke/which-key.nvim'
  use 'tpope/vim-sensible'
  use 'goolord/alpha-nvim'
  use { 'preservim/nerdtree', cmd = 'NERDTreeToggle' }
  use 'godlygeek/tabular'
  use 'preservim/vim-markdown'
  use 'numToStr/Comment.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }
end)

require('config.colors')
require('config.clipboard')
require('config.keymaps')
require('config.plugins')

