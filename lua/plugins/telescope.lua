return {
    {'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                              , branch = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
        require("telescope").setup({})
      end,
  },
{ 'nvim-telescope/telescope-fzf-native.nvim', 
build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
config = function()
require('telescope').load_extension('fzf')
end,
}
  }

