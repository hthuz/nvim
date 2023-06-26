
require('nvim-treesitter.configs').setup {
    ensure_installed = {"c","cpp","python","lua","html","htmldjango","vim","vimdoc", "javascript","css"},

    auto_install = true,

    highlight = {
        enable = true,
    },

    indent = {
        enable = true,
    },

    rainbow = {
        enable = true,
        query = "rainbow-parens",
    },
    autotag = {
        enable = false,
    },


}

