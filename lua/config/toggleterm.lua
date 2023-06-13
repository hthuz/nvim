
require('toggleterm').setup{

}

vim.cmd[[ autocmd TermEnter term://*toggleterm#* tnoremap <silent><C-t> <Cmd>exe v:count1 . "ToggleTerm"<CR> ]]
