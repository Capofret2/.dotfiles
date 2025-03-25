vim.g.mapleader = ' '
vim.g.maplocalleader = ','
local map = vim.api.nvim_set_keymap
local opts = { noremap = false, silent = true }

---------------------
-- General Keymaps --
---------------------

-- use fjf to exit insert mode
map('i', 'fjf', '<ESC>', opts)

-- delete single character without copying into register
map('n', 'x', '_x', opts)

-- multi-window management
map('n', '<C-Left>', '<C-w>h', opts) -- 切换到左侧窗口
map('n', '<C-Down>', '<C-w>j', opts) -- 切换到下方窗口
map('n', '<C-Up>', '<C-w>k', opts) -- 切换到上方窗口
map('n', '<C-Right>', '<C-w>l', opts) -- 切换到右侧窗口
map('n', '<Leader>v', ':vsplit<CR>', opts) -- 垂直分割窗口
map('n', '<Leader>q', ':q<CR>', opts) -- 关闭当前窗口

-- multi-tab management
map('n', 'nT', ':tabnew<CR>', opts)
map('n', '<A-Left>', 'gT', opts)
map('n', '<A-Right>', 'gt', opts)

-- window size management
-- map('n', '<Leader>+', ':resize +5<CR>', opts) -- 增加窗口高度
-- map('n', '<Leader>-', ':resize -5<CR>', opts) -- 减少窗口高度
map('n', '<Leader>+', ':vertical resize +5<CR>', opts) -- 增加窗口宽度
map('n', '<Leader>-', ':vertical resize -5<CR>', opts) -- 减少窗口宽度

-- 将上下分割的窗口转换为左右分割，并交换位置，同时使右窗口加宽
map('n', '<Leader>th', ':wincmd K<CR>:wincmd H<CR>:wincmd r<CR>:vertical resize +30<CR>', opts)

---------------------
-- Plugins Keymaps --
---------------------

-- easymotion
map('n', '<Leader>s', '<Plug>(easymotion-s2)', opts) -- search by 2 chars and go
map('n', '<Leader>j', '<Plug>(easymotion-j)', opts) -- go to a line below
map('n', '<Leader>k', '<Plug>(easymotion-k)', opts) -- go to a line above
map('n', '<Leader>w', '<Plug>(easymotion-w)', opts) -- go to a word following

-- nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- toggle file explorer

