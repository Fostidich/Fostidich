local lspconfig = require("lspconfig")

lspconfig.omnisharp.setup({
  cmd = { "omnisharp" },
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  root_dir = function(fname)
    return lspconfig.util.root_pattern("*.sln", "*.csproj", ".git")(fname) or vim.fn.getcwd()
  end,
  settings = {
    omnisharp = {
      enableRoslynAnalyzers = true,
      organizeImportsOnFormat = true,
    },
  },
})

require("lspconfig").clangd.setup({
  cmd = {
    "clangd",
    "--query-driver=**",
    "--compile-commands-dir=" .. vim.fn.getcwd(),
    "--header-insertion=never",
    "--pch-storage=memory",
    "--compile-commands-dir=build",
  },
  filetypes = { "c", "cpp", "h", "hpp" },
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})
