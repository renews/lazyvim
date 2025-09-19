-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.splitkeep = "cursor" -- default: screen, keep cursor position when splitting windows
vim.opt.shell = "fish" -- default: sh, set shell to fish
vim.opt.backspace = { "start", "eol", "indent" } -- default: "", allow backspacing over everything in insert mode
vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*", "*/_build/*", "*/deps/*" }) -- Ignore this folders always

-- Highlight the 120th columns
-- vim.opt.colorcolumn = "120"
vim.cmd([[highlight ColorColumn ctermbg=lightgrey guibg=lightgrey]])
