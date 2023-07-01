local map = vim.keymap.set

map("n", "<C-s>", ":w!<cr>", { silent = true })
map("i", "<C-s>", "<esc>:w!<cr>", { silent = true })

map("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi")

-- Insert --
-- Press jk fast to enter
map("i", "jk", "<ESC>")

map("x", ">", ">gv")
map("x", "<", "<gv")
map("v", ">", ">gv")
map("v", "<", "<gv")

map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Nvim Tree", silent = true })

map("v", "<A-j>", ":m .+1<CR>==")
map("v", "<A-k>", ":m .-2<CR>==")

-- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv")
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "<A-j>", ":move '>+1<CR>gv-gv")
map("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- Telescope --
local builtin = require("telescope.builtin")
map("n", "<leader>fb", builtin.buffers, { desc = "buffers" })
map("n", "<leader>ff", builtin.find_files, { desc = "find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "live grep" })
map("n", "<leader>fh", builtin.help_tags, { desc = "help tags" })
map("n", "<leader>fo", builtin.oldfiles, { desc = "recently used files" })
map("n", "<leader>fs", builtin.current_buffer_fuzzy_find, { desc = "search current buffer" })

map("n", "<leader>lf", function()
	vim.lsp.buf.format()
end, { desc = "format buffer" })

map("n", "<leader>lp", "<cmd>Lazy<cr>", {desc = "Lazy package manager"})

map("n", "<leader>bn", "<cmd>bnext<cr>", {desc="next buffer"})
map("n", "<leader>bp", "<cmd>bprev<cr>", {desc="previous buffer"})
map("n", "<leader>bd", "<cmd>bdelete<cr>", {desc="delete buffer"})
