-- enable 24-bit colour
vim.opt.termguicolors = true

-- colorcheme
vim.cmd.colorscheme 'catppuccin-mocha'

-- transparency
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NonText', { bg = 'none' })
