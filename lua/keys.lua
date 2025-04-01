
-- vim.api.nvim_set_keymap
-- map(mode, sequence, command, options)
-- mode: mode the key bind applies
-- sequence: sequence of keys to press
-- command you want to execute
-- options (noremap/silent etc)
--
-- Details about mode, see :help mode(). Common cases are
-- n: Normal,i: insert v: vsual, c:command-line editing
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true, expr = true}


map("n", "<leader>sv", ":luafile %<cr>", {noremap = true})
map("n", "<C-s>", ":w<cr>", {noremap = true})
map("n", "<C-q>", ":q!<cr>", {noremap = true})
map("n", "<leader><cr>", ":nohlsearch<cr>", {noremap = true})
map("n", "<leader>ev", ":vsplit ~/.config/nvim/lua<cr>", {noremap = true})
map("n", "<leader>w,", ":vertical resize -5<cr>",{noremap = true} )
map("n", "<leader>w.", ":vertical resize +5<cr>",{noremap = true} )
map("n", "<leader>w=", ":resize +5<cr>", {noremap = true})
map("n", "<leader>w-", ":resize -5<cr>", {noremap = true})
map("v", "<C-c>", '"+y', {noremap = true})
map("n", "gr", ":lua vim.lsp.buf.references()<cr>", {noremap = true})
map("n", "<C-I>", ":lua vim.lsp.buf.format()<cr>", {noremap = true, silent = true})
map("n", "<leader>d", ":lua vim.diagnostic.open_float()<cr>", {noremap = true, silent = true})
map("n", "<leader>b", ":Gitsigns blame_line<cr>", {noremap = true, silent = true})
map("n", "q", "<NOP>", {noremap = true})


