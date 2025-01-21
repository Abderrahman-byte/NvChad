require "nvchad.mappings"

local map = vim.keymap.set
local unmap = vim.keymap.del

-- Remove default mappings
unmap({ "n" }, "<Space>b")
unmap("n", "<leader>fw")
unmap("n", "<leader>e")

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- map("i", "jk", "<ESC>")
map("x", "<leader>p", '"_dP')
map("x", "<leader>d", '"_d')
map("n", "<leader>d", '"_d')
map("n", "Q", "<nop>")

-- Switching between buffers
map("n", "<leader>k", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<leader>j", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<leader>bc", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- Live grep
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })

-- toggle nvim-tree
map("n", "<leader>s", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- Remove newbie crutches in Normal Mode
map("n", "<Down>", "<Nop>", { noremap = true, silent = true })
map("n", "<Left>", "<Nop>", { noremap = true, silent = true })
map("n", "<Right>", "<Nop>", { noremap = true, silent = true })
map("n", "<Up>", "<Nop>", { noremap = true, silent = true })

-- Remove newbie crutches in Visual Mode
map("v", "<Down>", "<Nop>", { noremap = true, silent = true })
map("v", "<Left>", "<Nop>", { noremap = true, silent = true })
map("v", "<Right>", "<Nop>", { noremap = true, silent = true })
map("v", "<Up>", "<Nop>", { noremap = true, silent = true })

-- toggle DBUI
map("n", "<leader>du", "<cmd>DBUIToggle<CR>", { desc = "DBUI toggle window" })

-- File formatting
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true, async = true }
end, { desc = "general format file" })

-- toggle terminal
map({"t", "n"}, "<leader>tt", ":Floaterminal<CR>")

-- esc twice to exit terminal
map("t", "<esc><esc>", "<c-\\><c-n>")
