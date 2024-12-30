vim.cmd [[packadd packer.nvim]]
require('packer').startup(function()

    -- packer itself
    use 'wbthomason/packer.nvim'

    -- themes
    use 'Mofiqul/dracula.nvim'

    -- git support
    use 'airblade/vim-gitgutter'

    -- file explorer
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- lsp setup
    use 'neovim/nvim-lspconfig'

    -- autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'

    -- snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- syntax highlighting
    --use 'nvim-treesitter/nvim-treesitter'

end)

