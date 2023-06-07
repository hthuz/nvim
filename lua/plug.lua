
-- Auto install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)


-- Plugins installed
require("lazy").setup({
    {
        "dhruvasagar/vim-table-mode",
        keys = "<leader>tm"
    },

    {
        "neovim/nvim-lspconfig",
        event = {"BufEnter"},

    },


    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip"
        },

    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = "BufEnter"
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        prioprity = 1000,

    },

    {
        "nvim-telescope/telescope.nvim",
        tag = '0.1.1',
        keys = {
            {"<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>"},
            {"<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>"},
            {"<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>"},
            {"<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>"}
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
        }

    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    },


    {
        "numToStr/Comment.nvim",
        event = "BufEnter",
        config = function()
            require("Comment").setup()
        end

    },


})


-- Load plugin config
require('config/nvim-lspconfig')
require('config/nvim-cmp')
require('config/nvim-treesitter')
