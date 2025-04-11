
require('telescope').setup {
    extensions = {
    },
	defaults = {
		preview = false,
		dynamic_preview_title = true
	}

}

require('telescope').load_extension('fzf')

