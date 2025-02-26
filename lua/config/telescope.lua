
require('telescope').setup {
    extensions = {
    },
	defaults = {
		preview = false,
		path_display = "short",
		dynamic_preview_title = true
	}

}

require('telescope').load_extension('fzf')

