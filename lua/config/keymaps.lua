-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- buffers
map("n", "<C-q>", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

-- CodeCompanion
-- map("n", "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = false, silent = true })
-- map("v", "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
-- map("n", "<Leader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
-- map("v", "<Leader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
-- map("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })
--
-- -- Expand 'cc' into 'CodeCompanion' in the command line
-- vim.cmd([[cab cc CodeCompanion]])
-- Custom

--
-- Increment/decrement
map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

-- Delete a word backwards
map("n", "dwb", 'vb"_d')

-- Select all
map("n", "<C-a>", "gg<S-v>G")

-- Resize window
map("n", "<C-w><left>", "<C-w><")
map("n", "<C-w><right>", "<C-w>>")
map("n", "<C-w><up>", "<C-w>+")
map("n", "<C-w><down>", "<C-w>-")

-- My custom scripts
local utilities = require("coder.utilities")

map("n", "<Leader>fp", function()
  utilities.copy_to_clipboard()
end, { desc = "Copy relative path" })

map("n", "<Leader>fP", function()
  utilities.copy_to_clipboard(true)
end, { desc = "Copy path with line number" })

map("n", "<Leader>fd", function()
  utilities.copy_buffer_directory_to_clipboard()
end, { desc = "Copy file directory" })

-- Color conversion magic
map("n", "<leader>r", function()
  utilities.replace_hex_with_HSL()
end, { desc = "Replace hex with HSL" })
