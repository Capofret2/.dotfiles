
local map = vim.api.nvim_set_keymap  
local opts = { noremap = true, silent = true, buffer = bufnr }
  
map("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
map("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
map("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
map("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
map("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
map("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
map("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
map("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
map("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side
map("n", "<leader>tt", "<cmd>Lspsaga term_toggle<CR>", opts) -- see outline on right hand side
