
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
map("n", "<leader>ev", ":vsplit ~/.config/nvim/lua<cr>", {noremap = true})
map("n", "<C-w><C-v>", ":vsplit", {})


