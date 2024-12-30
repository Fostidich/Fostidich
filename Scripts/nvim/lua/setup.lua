local nvim_tree = require('nvim-tree')
--local nvim_treesitter_configs = require('nvim-treesitter.configs')
local telescope = require('telescope')
local lspconfig = require('lspconfig')
local cmp = require('cmp')
local luasnip = require('luasnip')

-- file explorer sidebar
nvim_tree.setup {}

-- onmisharp C# LSP
lspconfig.omnisharp.setup({
    cmd = { "omnisharp" },
    filetypes = { "cs" },
    root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj"),
})

-- completions
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'luasnip' },
    },
})

-- syntax highlighting
--nvim_treesitter_configs.setup {
--    ensure_installed = { "c_sharp" },
--    sync_install = false,
--    auto_install = true,
--    highlight = {
--        enable = true,
--        additional_vim_regex_highlighting = false,
--    },
--}

-- file searching
telescope.setup{
    defaults = {
        prompt_position = "bottom",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            width = 0.75,
            preview_width = 0.6,
        },
    }
}

