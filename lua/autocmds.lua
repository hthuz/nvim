
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



