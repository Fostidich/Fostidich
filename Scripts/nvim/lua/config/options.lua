-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.conceallevel = 0
vim.opt.wrap = true
vim.opt.linebreak = true

-- TODO: what is this?
vim.schedule(function()
  vim.opt.formatoptions:remove("o")
  vim.opt.formatoptions:remove("r")
end)

vim.filetype.add({
  extension = {
    ejs = "html",
  },
})
