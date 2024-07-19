local map = vim.keymap.set

-- buffers
map("n", "<leader>bc", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
map("n", "<C-q>", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
map("n", "<leader>bC", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })
