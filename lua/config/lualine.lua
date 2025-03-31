require('lualine').setup {

	sections = {
		lualine_a = {},
		lualine_c = {
			{
				'filename',
				file_status = true,
				path = 1, -- 0: Just the filename
				-- 1: Relative path
				-- 2: Absolute path
				-- 3: Absolute path, with tilde as the home directory
				-- 4: Filename and parent dir, with tilde as the home directory
			}
		},
		lualine_x = { 'filetype' }
	}
}
