return {
    'stevearc/oil.nvim',
    lazy = false,
    config = function()
        local oil = require "oil"

        vim.keymap.set("n", "<leader>d", function()
            oil.open_float(nil, { preview = { enabled = true } })
        end, { desc = "Open Oil in float with preview" })
        vim.keymap.set("n", "<leader>D", function()
            oil.open()
        end, { desc = "Open Oil with preview" })
        vim.keymap.set("n", "<BS>", function()
            oil.open()
        end, { desc = "Open Oil with preview" })

        oil.setup({
            default_file_explorer = true,
            constrain_cursor = "name",
            keymaps = {
                ["<leader>d"] = { "actions.close", mode = "n", desc = "Open file explorer in float" },
                ["<leader>D"] = { "actions.close", mode = "n", desc = "Open file explorer" },
                ["<Esc>"] = { "actions.close", mode = "n", desc = "Close file explorer" },
                ["<CR>"] = { "actions.select", mode = "n", desc = "Open file or folder" },
                ["L"] = { "actions.select", mode = "n", desc = "Open file or folder" },
                ["<BS>"] = { "actions.parent", mode = "n", desc = "Go to parent folder" },
                ["H"] = { "actions.parent", mode = "n", desc = "Go to parent folder" },
                ["<C-.>"] = { "actions.toggle_hidden", mode = "n", desc = "Toggle hidden files" },
                ["<C-h>"] = false
            },
            use_default_keymaps = true,
            view_options = {
                show_hidden = true,
                is_hidden_file = function(name, bufnr)
                    return name:match("^%.") ~= nil
                end,
                is_always_hidden = function(name, bufnr)
                    return name == "." or name == ".." or name == ".DS_Store"
                end,
            },
            float = {
                padding = 10,
                preview_split = "right",
            },
        })
    end
}
