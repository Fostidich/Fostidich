-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set("n", "<A-Up>", ":m-2<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Down>", ":m+1<CR>==", { noremap = true, silent = true })

vim.keymap.set("i", "<D-CR>", "<Esc>o", { noremap = true, silent = true })
vim.keymap.set("i", "<D-S-CR>", "<Esc>O", { noremap = true, silent = true })
