
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- vim.api.nvim_set_var -> vim.g
-- vim.api.nvim_set_option
-- vim.api.nvim_set_keymap
--


require('opts')
require('keys')
require('plug')
require("autocmds")
-- print('hello')
-- print("world")
vim.cmd[[colorscheme tokyonight-moon]]

--[[
function _G.setn()
    if (vim.opt.number:get() == true) then
        vim.opt.number = false
    else
        vim.opt.number = true
    end

    print("Hello")
end
--]]
--
