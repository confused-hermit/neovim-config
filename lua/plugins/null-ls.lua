return{
    {"WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
        require('mason-tool-installer').setup({
ensure_installed ={
"black",
"flake8",
"isort",
"stylua",
"golines",
"shfmt",
}
})
end,
},
    {"jose-elias-alvarez/null-ls.nvim",
    config = function ()
        local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.htmlbeautifier,
    },
})
    end

}}
