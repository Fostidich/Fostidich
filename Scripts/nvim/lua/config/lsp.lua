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

-- TODO: What is this?
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      marksman = false, -- markdown LSP
      ltex = false, -- grammar checker
    },
    setup = {
      markdown = function()
        vim.api.nvim_create_autocmd("FileType", {
          pattern = "markdown",
          callback = function(args)
            -- Disable diagnostics in markdown<D-a>
            vim.diagnostic.diable(args.buf)
          end,
        })
        return false
      end,
    },
  },
}
