local on_attach = function(client, bufnr)

    local buf_map = function(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true, desc = desc })
    end

    buf_map("n", "K", vim.lsp.buf.hover, "Hover documentation")
    buf_map("i", "<C-s>", vim.lsp.buf.signature_help, "Signature help")  
    buf_map("i", "<C-o>", "<C-x><C-o>", "Show completion options")  

    buf_map("n", "gd", vim.lsp.bug.definition, "Go to definition")       
    buf_map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
    buf_map("n", "gI", vim.lsp.buf.implementation, "Go to implementation")  

    buf_map("n", "gu", vim.lsp.buf.references, "Show references")             
    buf_map({"n","v"}, "ga", vim.lsp.buf.code_action, "Show code actions") 

    buf_map("n", "gr", vim.lsp.buf.rename, "Rename symbol")       

    buf_map("n", "gm", vim.diagnostic.open_float, "Show diagnostic message") 
    buf_map("n", "[d", vim.diagnostic.goto_prev, "Previous diagnostic")
    buf_map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")

    buf_map("n", "gf", function() vim.lsp.buf.format({ async = true }) end, "Format file")

end

local add_server = function(server)
    vim.lsp.enable(server, { on_attach = on_attach })
end

add_server "lua_ls" 
add_server "markdown_oxide" 
add_server "vtsls"
add_server "html"
add_server "cssls"
add_server "pyright"
add_server "clangd"
add_server "cmake"
add_server "rust_analyzer"
add_server "gopls"
add_server "sourcekit"

