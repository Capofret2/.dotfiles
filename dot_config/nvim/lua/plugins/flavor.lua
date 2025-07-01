return {

  { -- theme
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin-mocha"
    end,
  },

  { -- animate cursor motion
    "sphamba/smear-cursor.nvim", 
    lazy = false,
    opts = {},
  },

}

