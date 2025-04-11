
local augroup = vim.api.nvim_create_augroup
-- local autocmd = vim.api.nvim_create_autocmd

augroup("filetype_python", { clear = true })

vim.api.nvim_create_autocmd("BufEnter", {
	group = "filetype_python",
	pattern = "*.py",
	callback = function()
		-- vim.opt.expandtab = false
	end
})


vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove { "c", "r", "o" }
  end,
  desc = "Disable New Line Comment",
})


vim.api.nvim_create_user_command("M",function()
	vim.cmd('10messages')
end,{})

