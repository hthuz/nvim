
require('nvim-tree').setup{
    view = {
        width = {
			max = -1,
		},
		preserve_window_proportions = true
    },
    git = {
        enable = false
    },
	update_focused_file = {
		enable = true,
		update_root = true
	},
	renderer = {
		group_empty = true,
		full_name = true
	}


}
