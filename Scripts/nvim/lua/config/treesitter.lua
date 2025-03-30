require("nvim-treesitter.configs").setup({
  modules = {}, -- Required field, can be empty
  ensure_installed = { "c_sharp" }, -- Install C# parser
  sync_install = false, -- Install parsers synchronously
  ignore_install = {}, -- List of parsers to ignore
  auto_install = true, -- Auto-install missing parsers
  highlight = { enable = true }, -- Enable syntax highlighting
  indent = { enable = true }, -- Enable smart indentation
})
