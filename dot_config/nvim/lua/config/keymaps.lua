vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- 设置 easymotion 的快捷键
local map = vim.api.nvim_set_keymap
local opts = { noremap = false, silent = true }

-- 搜索并跳转到任意字符
map('n', '<Leader>s', '<Plug>(easymotion-s2)', opts)

-- 向下跳转到行
map('n', '<Leader>j', '<Plug>(easymotion-j)', opts)

-- 向上跳转到行
map('n', '<Leader>k', '<Plug>(easymotion-k)', opts)

-- 搜索并跳转到单词
map('n', '<Leader>w', '<Plug>(easymotion-w)', opts)

-- NERDTree 快捷键
map('n', '<Leader>nn', ':NERDTreeToggle<CR>', opts) -- 打开/关闭 NERDTree
map('n', '<Leader>nm', ':NERDTreeFind<CR>', opts) -- 查找当前文件在 NERDTree 中的位置
map('n', '<Leader>nf', ':NERDTreeFocus<CR>', opts) -- 聚焦到 NERDTree

-- 多窗口管理快捷键
map('n', '<C-Left>', '<C-w>h', opts) -- 切换到左侧窗口
map('n', '<C-Down>', '<C-w>j', opts) -- 切换到下方窗口
map('n', '<C-Up>', '<C-w>k', opts) -- 切换到上方窗口
map('n', '<C-Right>', '<C-w>l', opts) -- 切换到右侧窗口
map('n', '<Leader>v', ':vsplit<CR>', opts) -- 垂直分割窗口
map('n', '<Leader>q', ':q<CR>', opts) -- 关闭当前窗口

-- 多Tabs管理
map('n', 'nT', ':tabnew<CR>', opts)
map('n', '<A-Left>', 'gT', opts)
map('n', '<A-Right>', 'gt', opts)

-- 调整窗口大小
-- map('n', '<Leader>+', ':resize +5<CR>', opts) -- 增加窗口高度
-- map('n', '<Leader>-', ':resize -5<CR>', opts) -- 减少窗口高度
map('n', '<Leader>+', ':vertical resize +5<CR>', opts) -- 增加窗口宽度
map('n', '<Leader>-', ':vertical resize -5<CR>', opts) -- 减少窗口宽度

-- 将上下分割的窗口转换为左右分割，并交换位置，同时使右窗口加宽
map('n', '<Leader>th', ':wincmd K<CR>:wincmd H<CR>:wincmd r<CR>:vertical resize +30<CR>', opts)
