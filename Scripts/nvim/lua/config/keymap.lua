vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "Remove highlight" })
vim.keymap.set("x", "p", [["_dP]], { desc = "Substitute text" })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Unfocus from terminal" })

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected text down" })
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move selected text up" })

vim.keymap.set("n", "L", "G$", { desc = "Last file's char" })
vim.keymap.set("n", "H", "gg0", { desc = "First files's char" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Go up a page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Go down a page" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Next match" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous match" })

vim.keymap.set("n", "<C-p>", "<cmd>cprev<CR>", { desc = "Previous quickfix match" })
vim.keymap.set("n", "<C-n>", "<cmd>cnext<CR>", { desc = "Next quickfix match" })
vim.keymap.set("n", "<leader>o", "<cmd>ToggleQuickfix<CR>", { desc = "Toggle Quickfix" })

vim.keymap.set("n", "<leader>pv", "<cmd>vsplit<CR>", { desc = "Split pane vertically" })
vim.keymap.set("n", "<leader>ph", "<cmd>split<CR>", { desc = "Split pane horizontally" })
