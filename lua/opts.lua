
-- vim.api.nvim_set_option -> vim.o (:set)
-- vim.api.nvim_set_option -> vim.go (:setglobal)
-- vim.api.nvim_buf_set_option -> vim.bo (:setlocal for buffer)
-- vim.api.nvim_win_set_option ->vim.wo (:setlocal for window)
--
-- vim.o access using (string)
-- vim.opt allows interacting with **list** and map style option, object is returned using vim.opt:get()
-- vim.opt is **more recommended**


local opt = vim.opt
local g = vim.g
local bo = vim.bo

opt.filetype = "ON"
opt.number = true
opt.wrap = true
opt.autoindent = true
opt.encoding = 'utf8'
opt.syntax = "ON"
opt.laststatus = 0

opt.completeopt = {'menu', 'menuone'}

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

opt.expandtab = false
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

opt.termguicolors = true
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1


vim.cmd[[ autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]]                                                           
