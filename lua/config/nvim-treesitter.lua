
require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "c",
        "cpp",
        "python",
        "lua",
        "html",
        "htmldjango",
        "vim",
        "vimdoc",
        "javascript",
        "css",
        "scss",
        "java",
        "markdown",
        "markdown_inline",
        "rasi",
        "yuck",
        "r",
        "verilog",
        "bash"
    },

    auto_install = true,

    highlight = {
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

