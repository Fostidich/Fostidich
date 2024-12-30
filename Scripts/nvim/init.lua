require('plugins')
require('keymaps')
require('setup')

-- theme
vim.cmd('colorscheme dracula')

-- lsp
vim.lsp.set_log_level('debug')

-- options
vim.opt.syntax = 'on'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.number = true
vim.opt.updatetime = 300
vim.opt.background = 'dark'

-- autocommands
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*',
    command = '%s/\\s\\+$//e'
})

-- commands
vim.api.nvim_create_user_command('S', 'w | source %', {})
vim.api.nvim_create_user_command('C', 'e $MYVIMRC', {})
vim.api.nvim_create_user_command('T', 'terminal', {})
vim.api.nvim_create_user_command('Typos', 'w | !typos "%"', {})

