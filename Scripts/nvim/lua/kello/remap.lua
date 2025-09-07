vim.g.mapleader = " "

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "L", "G$")
vim.keymap.set("n", "H", "gg0")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>")

vim.keymap.set("x", "p", [["_dP]])

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

vim.keymap.set({ "n", "v" }, "<Left>", function() vim.cmd('echo "Go left with \'h\'"') end)
vim.keymap.set({ "n", "v" }, "<Down>", function() vim.cmd('echo "Go down with \'j\'"') end)
vim.keymap.set({ "n", "v" }, "<Up>", function() vim.cmd('echo "Go up with \'k\'"') end)
vim.keymap.set({ "n", "v" }, "<Right>", function() vim.cmd('echo "Go right with \'l\'"') end)
vim.keymap.set({ "n", "v" }, "<S-Left>", function() vim.cmd('echo "Go to previous word with \'e\'"') end)
vim.keymap.set({ "n", "v" }, "<S-Down>", function() vim.cmd('echo "Go down a page with \'C-d\'"') end)
vim.keymap.set({ "n", "v" }, "<S-Up>", function() vim.cmd('echo "Go up a page with \'C-u\'"') end)
vim.keymap.set({ "n", "v" }, "<S-Right>", function() vim.cmd('echo "Go to next word with \'w\'"') end)
