vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)

    use { "wbthomason/packer.nvim" }

    use { "stevearc/oil.nvim", config = function() require("oil").setup() end }

    use { "nvim-telescope/telescope.nvim", tag = "0.1.8", requires = { {"nvim-lua/plenary.nvim"} } }

    use { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} }

    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

    use { "theprimeagen/harpoon", branch = "harpoon2", requires = { {"nvim-lua/plenary.nvim"} } }

    use { "neovim/nvim-lspconfig" }

end)

