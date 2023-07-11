return {
    {
        "sainnhe/sonokai",
        config = function()
            vim.g.sonokai_style = "andromeda"
            -- vim.cmd("colorscheme sonokai")
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.o.background = "dark" -- or "light" for light mode
            vim.cmd([[colorscheme gruvbox]])
        end,
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            -- vim.g.tokyonight_style = "night"
            require("tokyonight").setup({
                -- transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent",
                },
                on_highlights = function(hl, colors)
                    hl.CursorLineNr = {
                        fg = colors.yellow,
                    }
                    hl.CursorLine = {
                        bg = colors.black,
                    }
                end,
            })
            -- vim.cmd("colorscheme tokyonight")
        end,
    },
    {
        "mcchrish/zenbones.nvim",
        dependencies = "rktjmp/lush.nvim",
        -- config = function()
        --     vim.cmd("colorscheme kanagawabones")
        -- end,
    },
    {
        "catppuccin/nvim",
        -- config = function()
        --     vim.cmd("colorscheme catppuccin")
        -- end,
    },
    { "nvim-tree/nvim-web-devicons" },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = true,
                    theme = "auto",
                    component_separators = { left = "", right = "" },
                    section_separators = { left = "", right = "" },
                    disabled_filetypes = {
                        statusline = { "starter" },
                        winbar = {},
                    },
                },
                sections = {
                    lualine_x = {
                        {
                            function()
                                return "[" .. vim.lsp.get_active_clients()[1].name .. "]"
                            end,
                        },
                        "filetype",
                        "encoding",
                    },
                    lualine_z = { { "datetime", style = "%a %d/%m/%Y %I:%M %p" } },
                },
            })
        end,
    },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("bufferline").setup({})
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({})
        end,
    },
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup({
                open_mapping = [[<c-t>]],
                direction = "float",
                float_opts = {
                    border = "curved",
                },
            })
        end,
    },
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        opts = {
            -- configurations go here
        },
    },
}
