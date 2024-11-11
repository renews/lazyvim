local map = vim.keymap.set

-- buffers
map("n", "<C-q>", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })
