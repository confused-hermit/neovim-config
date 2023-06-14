return {
    {
        "sainnhe/sonokai",
        config = function()
            vim.g.sonokai_style = "andromeda"
            vim.cmd("colorscheme sonokai")
        end,
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
                        statusline = {"starter"},
                        winbar = {},
                    },
                },
                sections = {
                    lualine_x = { { function() return "[" .. vim.lsp.get_active_clients()[1].name .. "]" end}, "filetype", "encoding" },
                    lualine_z = { { "datetime", style = "%a %d/%m/%Y %I:%M %p" } },
                },
            })
        end,
    },
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',         
    config = function()
        require("bufferline").setup({})
    end,},
    {"lewis6991/gitsigns.nvim",
config = function()
require("gitsigns").setup({})
end,

},
{"akinsho/toggleterm.nvim", 
config = function ()
    require("toggleterm").setup({
        open_mapping = [[<c-t>]],
        direction = "float",
        float_opts = {
border = "curved"
        },
    })
end
},
}
