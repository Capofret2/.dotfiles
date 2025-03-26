-- enable 24-bit colour
vim.opt.termguicolors = true

-- colorcheme
vim.cmd.colorscheme 'catppuccin-mocha'

-- transparency
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NonText', { bg = 'none' })

-- 定义半透明背景的高亮组
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#313244', blend = 100 }) -- 背景颜色和透明度
-- vim.api.nvim_set_hl(0, 'FloatBorder', { fg = '#ffffff', bg = '#313244', blend = 50 }) -- 边框颜色和透明度

