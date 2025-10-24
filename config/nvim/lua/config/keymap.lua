vim.keymap.set("n", "<Esc>", "<cmd>noh<cr>", { desc = "Remove highlight" })
vim.keymap.set("x", "p", [["_dP]], { desc = "Substitute text" })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Unfocus from terminal" })

vim.keymap.set("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "Move selected text down" })
vim.keymap.set("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "Move selected text up" })

vim.keymap.set("v", ">", ">gv", { desc = "Indend visual block" })
vim.keymap.set("v", "<", "<gv", { desc = "Unindent visual block" })

vim.keymap.set("n", "L", "G$", { desc = "Last file's char" })
vim.keymap.set("n", "H", "gg0", { desc = "First files's char" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Go up a page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Go down a page" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Append next line" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next match" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous match" })

vim.keymap.set("n", "<C-p>", "<cmd>cprev<cr>", { desc = "Previous quickfix match" })
vim.keymap.set("n", "<C-n>", "<cmd>cnext<cr>", { desc = "Next quickfix match" })
vim.keymap.set("n", "<leader>o", "<cmd>ToggleQuickfix<cr>", { desc = "Toggle Quickfix" })

vim.keymap.set("n", "<leader>pv", "<cmd>vsplit<cr>", { desc = "Split pane vertically" })
vim.keymap.set("n", "<leader>ph", "<cmd>split<cr>", { desc = "Split pane horizontally" })
