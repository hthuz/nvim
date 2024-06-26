
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

-- Event order
-- BufRead(Post)->BufEnter
-- Either keys/event/cmd is matched, the plug in loaded

-- Plugins installed
require("lazy").setup({

    -------------------
    -- Lsp
    -------------------
    {
        "neovim/nvim-lspconfig",
        event = {"BufEnter"},
        -- cofig = function()
        --     require('config/nvim-lspconfig')
        -- end
    },

	-- {
	-- 	"jose-elias-alvarez/null-ls.nvim",
	-- 	config = function()
	-- 		local null_ls = require('null-ls')
	-- 		null_ls.setup({
	-- 			sources = {
	-- 				null_ls.builtins.formatting.stylua,
	-- 				null_ls.builtins.diagnostics.eslint,
	-- 				null_ls.builtins.completion.spell
	-- 			}
	-- 		})
	-- 	end
	-- },
    --------------------
    -- Completion
    --------------------
    {
        "hrsh7th/nvim-cmp",
        event = {"InsertEnter","CmdLineEnter"},
        dependencies = {
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
			"onsails/lspkind.nvim"

        },
        config = function()
            require('config/nvim-cmp')
        end
    },

	{
		"hrsh7th/cmp-nvim-lua",
		ft = {"lua"}
	},

    {
        "hrsh7th/cmp-buffer",
        event = {"InsertEnter","CmdLineEnter"}
    },

    {
        "hrsh7th/cmp-path",
        event = {"InsertEnter", "CmdLineEnter"}
    },

    {
        "hrsh7th/cmp-nvim-lsp",
        event = "InsertEnter",
    },

    {
        "tzachar/cmp-fuzzy-path",
        lazy = true,
        -- event = {"CmdLineEnter", "InsertEnter"},
        dependencies = {
            "hrsh7th/nvim-cmp",
            "tzachar/fuzzy.nvim"
        }
    },

    {
        "tzachar/cmp-fuzzy-buffer",
        lazy = true,
        -- event = {"CmdLineEnter", "InsertEnter"},
        dependencies = {
            "hrsh7th/nvim-cmp",
            "tzachar/fuzzy.nvim"
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
        "github/copilot.vim",
        cmd="Copilot enable"
    },

    {
        "nvimdev/lspsaga.nvim",
        config = function()
			require('config/lspsaga')
        end,
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        }
    },

    -- it seems than if ft if html or event is InsertEnter, 
    -- treesitter won't load this plugin since autotag starts later than ts.
    -- {
    --     "windwp/nvim-ts-autotag",
    --     lazy = true,
    --     -- ft = "html",
    --     -- dependencies = {
    --     --     "nvim-treesitter/nvim-treesitter"
    --     -- }
    --     
    --
    -- },
    -- But it seems that this plugin can't be lazy loaded either
    {
        "alvan/vim-closetag",
        ft = {"html","djangohtml"}
    },



    ------------------------------
    -- Shortcut
    -----------------------------
    {
        "dhruvasagar/vim-table-mode",
        keys = "<leader>tm",
        config = function()
            require("config/vim-table-mode")
        end
    },

    {
        "numToStr/Comment.nvim",
        keys = {
            {'<C-_>', mode = {'n', 'v'}},
        },
        config = function()
            require("config/Comment")
        end

    },

    {
        "tpope/vim-fugitive",
        event = "CmdLineEnter",
    },

    ------------------------------
    -- Decoration
    ------------------------------

    {
        "folke/tokyonight.nvim",
        lazy = false,
        prioprity = 1000,
    },

    {
        "nvim-lualine/lualine.nvim",
        event = "BufEnter",
        config = function()
            require('config/lualine')
        end
    },


    {
        "nvim-treesitter/nvim-treesitter",
        event = "FileType",
        config = function()
            require('config/nvim-treesitter')
        end
    },

    {
        "preservim/vim-markdown",
        ft = "markdown",
        -- lazy = true,
        dependencies = {
            "godlygeek/tabular"
        },
        config = function()
            require('config/vim-markdown')
        end
    },
    -- {
    --     'nvimdev/dashboard-nvim',
    --     event = "VimEnter",
    --     config = function()
    --         require('config/dashboard')
    --     end
    -- },

	-- @Deprecated
    -- {
    --     "HiPhish/nvim-ts-rainbow2",
    --     event = "FileType",
    --     dependencies = {
    --         "nvim-treesitter/nvim-treesitter",
    --     }
    -- },

	{
		"HiPhish/rainbow-delimiters.nvim",
		event = "FileType",
		config = function()
			require('config/rainbow-delimiters')
		end
	},

    --------------------------------
    -- Tools
    --------------------------------

    {
        "nvim-telescope/telescope.nvim",
        tag = '0.1.6',
        keys = {
            {"<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>"},
            {"<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>"},
            -- {"<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>"},
            {"<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>"}
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require('config/telescope')
        end
    },

    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = 'make'
    },

    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        keys = {
            {'<leader>tc', "<cmd>NvimTreeClose<cr>"},
            {'<leader>tt', "<cmd>NvimTreeFocus<cr>"}
        },
        config = function()
            require("config/nvim-tree")
        end
    },

    {
        'akinsho/toggleterm.nvim',
        keys = {
            {'<C-t>', "<cmd>ToggleTerm direction=float<cr>"},
            {'<S-t>', "<cmd>ToggleTerm direction=vertical<cr>"}
        },
        config = function()
            require('config/toggleterm')
        end
    },


    -- {
    --     'Bekaboo/dropbar.nvim'
    -- },


    {
        "kevinhwang91/rnvimr",
        keys = {
            {'<leader>r', "<cmd>RnvimrToggle<cr>"}
        }
    },

    {
        "iamcco/markdown-preview.nvim",
        build = "cd app & npm install",
        ft = "markdown",
        keys = {
            {'<leader>md', "<cmd>MarkdownPreview<cr>"}
        }
    }

}, { -- Config for lazy
    })

require('config/nvim-lspconfig')

