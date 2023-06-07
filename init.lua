
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- vim.api.nvim_set_var -> vim.g
-- vim.api.nvim_set_option
-- vim.api.nvim_set_keymap
--


require('vars')
require('opts')
require('keys')
require('plug')

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
