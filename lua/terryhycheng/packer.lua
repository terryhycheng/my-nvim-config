-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        -- or                            , branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use({
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
        end,
    })
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
            ts_update()
        end,
    })
    use("ThePrimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
        },
    })
    use({
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup({})
        end,
    })
    use("lewis6991/gitsigns.nvim") -- OPTIONAL: for git status
    use("romgrk/barbar.nvim")
    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons", -- optional, for file icons
        },
        config = function()
            require("nvim-tree").setup({
                -- your options here (see below)
                view = {
                    width = 30,
                    side = "left",
                    -- other view options
                },
                renderer = {
                    icons = {
                        show = {
                            git = true,
                            folder = true,
                            file = true,
                            folder_arrow = true,
                        },
                    },
                },
            })
        end,
    })
    use({
        "akinsho/toggleterm.nvim",
        tag = "*", -- latest stable
    })
    use("vim-airline/vim-airline")
    use("vim-airline/vim-airline-themes")
    use("christoomey/vim-tmux-navigator")
    use("lukas-reineke/indent-blankline.nvim")
    use({
        "williamboman/mason-null-ls.nvim", -- bridges Mason and null-ls
        requires = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim", -- use this instead of deprecated null-ls
        },
    })
    use("nvim-lua/plenary.nvim") -- required dependency

    -- Required plugins
    use 'MunifTanjim/nui.nvim'
    use 'MeanderingProgrammer/render-markdown.nvim'

    -- Optional dependencies
    use 'hrsh7th/nvim-cmp'
    use 'nvim-tree/nvim-web-devicons' -- or use 'echasnovski/mini.icons'
    use 'HakonHarnes/img-clip.nvim'
    use 'zbirenbaum/copilot.lua'
    use 'stevearc/dressing.nvim' -- for enhanced input UI
    use 'folke/snacks.nvim'      -- for modern input UI

    -- Avante.nvim with build process
    use {
        "OXY2DEV/markview.nvim",
        branch = "main",
        config = function()
            require("markview").setup {
                preview = {
                    filetypes = { "markdown", "Avante" },
                    ignore_buftypes = {},
                },
                max_length = 99999,
            }
        end,
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
    }
    use {
        'yetone/avante.nvim',
        branch = 'main',
        run = 'make',
    }
    use({
        'nvimdev/lspsaga.nvim',
        after = 'nvim-lspconfig',
    })
end)
