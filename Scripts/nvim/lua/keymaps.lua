local opts = { noremap = true, silent = true }

-- normal mode
vim.keymap.set('n', '<A-Up>', ':m-2<CR>', opts)
vim.keymap.set('n', '<A-Down>', ':m+1<CR>', opts)
vim.keymap.set('n', '<Leader>f', '$', opts)
vim.keymap.set('n', '<Leader>s', '0', opts)
vim.keymap.set('n', '<Leader>e', 'G', opts)
vim.keymap.set('n', '<Leader>i', 'gg', opts)
vim.keymap.set('n', '<Leader>w', ':e %:p:h<CR>', opts)
vim.keymap.set('n', '<Leader>q', ':q<CR>', opts)
vim.keymap.set('n', '<C-Tab>', ':bn<CR>', opts)
vim.keymap.set('n', '<C-S-Tab>', ':bp<CR>', opts)
vim.keymap.set('n', '<Del><Del>', '"_dd', opts)
vim.keymap.set('n', '<C-w>', ':bd<CR>', opts)
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>', opts)
vim.keymap.set('n', '<Leader>b', ':Telescope buffers<CR>', opts)

-- insert mode
vim.keymap.set('i', '<A-Up>', '<Esc>:m-2<CR>a', opts)
vim.keymap.set('i', '<A-Down>', '<Esc>:m+1<CR>a', opts)
vim.keymap.set('i', '<C-f>', '<C-o>$', opts)
vim.keymap.set('i', '<C-s>', '<C-o>0<Left>', opts)
vim.keymap.set('i', '<C-Right>', '<C-o>e<Right>', opts)
vim.keymap.set('i', '<C-CR>', '<C-o>$<CR>', opts)

-- visual mode
vim.keymap.set('v', '<A-Up>', ':m \'<-2<CR>gv=gv', opts)
vim.keymap.set('v', '<A-Down>', ':m \'>+1<CR>gv=gv', opts)
vim.keymap.set('v', 'w', 'b', opts)
vim.keymap.set('v', 'e', '<Down>', opts)
vim.keymap.set('v', 'r', '<Up>', opts)
vim.keymap.set('v', 't', 'w', opts)

-- terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)

