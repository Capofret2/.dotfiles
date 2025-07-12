vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local opts = { noremap = false, silent = true }

---------------------
-- General Keymaps --
---------------------

vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })

---------------------
-- Plugins Keymaps --
---------------------

-- easymotion
map('n', '<Leader>s', '<Plug>(easymotion-s2)', opts) -- search by 2 chars and go
map('n', '<Leader>w', '<Plug>(easymotion-w)', opts) -- go to a word following
map('n', '<Leader>j', '<Plug>(easymotion-j)', opts) -- go to a line below
map('n', '<Leader>k', '<Plug>(easymotion-k)', opts) -- go to a line above
map('v', '<Leader>j', '<Plug>(easymotion-j)', opts) 
map('v', '<Leader>k', '<Plug>(easymotion-k)', opts) 

-- -- nvim-tree
-- map("n", "eo", ":NvimTreeToggle<CR>", opts) -- toggle file explorer
-- map("n", "ef", ":NvimTreeFocus<CR>", opts) -- focus file explorer
--
-- -- tabularize
-- map('v', '<Leader>t', ':Tabularize /', opts) -- quick format
