return {
  -- LSP
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "Hoffs/omnisharp-extended-lsp.nvim" },
  { "p00f/clangd_extensions.nvim" },

  -- Autocompletion & Snippets
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "saadparwaiz1/cmp_luasnip" },
  { "L3MON4D3/LuaSnip" },

  -- Formatting & Linting
  { "stevearc/conform.nvim" },
  { "mfussenegger/nvim-lint" },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
}
