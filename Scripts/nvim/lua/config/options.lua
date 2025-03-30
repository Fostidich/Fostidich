-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.tabstop = 4 -- Number of spaces per tab
vim.opt.shiftwidth = 4 -- Number of spaces to use for indentation
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.conceallevel = 0
vim.opt.wrap = true
vim.opt.linebreak = true

vim.schedule(function()
  vim.opt.formatoptions:remove("o")
  vim.opt.formatoptions:remove("r")
end)

vim.filetype.add({
  extension = {
    ejs = "html",
  },
})
