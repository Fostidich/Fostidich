return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "folke/lazydev.nvim",
                ft = "lua",
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            vim.lsp.enable "lua_ls"
            vim.lsp.enable "markdown_oxide"
            vim.lsp.enable "vtsls"
            vim.lsp.enable "html"
            vim.lsp.enable "cssls"
            vim.lsp.enable "pyright"
            vim.lsp.enable "clangd"
            vim.lsp.enable "cmake"
            vim.lsp.enable "rust_analyzer"
            vim.lsp.enable "gopls"
            vim.lsp.enable "sourcekit"

            vim.api.nvim_create_autocmd("LspAttach", {
                desc = "LSP settings set on attach",
                callback = function(args)
                    local buffer = args.buf
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if not client then return end
                    print("LSP attached: " .. client.name)

                    local mapset = function(mode, lhs, rhs, desc)
                        vim.keymap.set(mode, lhs, rhs, { buffer = buffer, silent = true, desc = desc })
                    end
                    local mapdel = function(mode, lhs)
                        if vim.fn.maparg(lhs, mode) ~= "" then
                            vim.keymap.del(mode, lhs)
                        end
                    end

                    mapdel("n", "grn")
                    mapdel("n", "gra")
                    mapdel("n", "grr")
                    mapdel("n", "gri")
                    mapdel("n", "grt")

                    mapset("n", "K", vim.lsp.buf.hover, "Hover documentation")
                    mapset("i", "<C-s>", vim.lsp.buf.signature_help, "Signature help")
                    mapset("i", "<C-o>", "<C-x><C-o>", "Show completion options")
                    mapset("n", "gd", vim.lsp.buf.definition, "Go to definition")
                    mapset("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
                    mapset("n", "gI", vim.lsp.buf.implementation, "Go to implementation")
                    mapset("n", "gu", vim.lsp.buf.references, "Show references")
                    mapset("n", "gs", vim.lsp.buf.document_symbol, "Show document symbols")
                    mapset({ "n", "v" }, "ga", vim.lsp.buf.code_action, "Show code actions")
                    mapset("n", "gr", vim.lsp.buf.rename, "Rename symbol")
                    mapset("n", "gm", vim.diagnostic.open_float, "Show diagnostic message")
                    mapset("n", "[d", vim.diagnostic.goto_prev, "Previous diagnostic")
                    mapset("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")
                    mapset("n", "gf", vim.lsp.buf.format, "Format file")

                    if client.supports_method("textDocument/formatting") then
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            desc = "Autoformatting on save",
                            callback = function()
                                vim.lsp.buf.format { bufrn = buffer, id = client.id }
                            end
                        })
                    end
                end
            })
        end
    }
}
