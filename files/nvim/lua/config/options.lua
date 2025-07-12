local opt = vim.opt
local api = vim.api

opt.number = true -- show abs line num

opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from curr line when starting new one

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- case-sensitive if mixed cases included

opt.cursorline = true -- highlight cursorline

opt.signcolumn = "auto" 

opt.clipboard:append("unnamedplus") -- use sys clipboard as default register

opt.termguicolors = true -- enable 24-bit color
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' }) -- transparent bg
vim.api.nvim_set_hl(0, 'NonText', { bg = 'none' })


