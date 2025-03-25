require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- plugins manager
  use 'tpope/vim-sensible' -- a universal set of defaults that (hopefully) everyone can agree on

  use 'nvim-lua/plenary.nvim' -- dependency
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  use 'easymotion/vim-easymotion' 
  use 'sphamba/smear-cursor.nvim' -- animate cursor motion
  use 'folke/which-key.nvim' -- hotkeys hint
  use 'goolord/alpha-nvim' -- startify
  use 'godlygeek/tabular'
  use 'numToStr/Comment.nvim' -- quick comment line/block
  use { 'catppuccin/nvim', as = 'catppuccin' }
end)

require('flavors.colorscheme')
require('core.keymaps')
require('core.options')
require('plugins.setup')

