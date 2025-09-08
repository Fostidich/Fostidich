return {
    {
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

            oil.setup({
                -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
                -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
                default_file_explorer = true,
                -- Constrain the cursor to the editable parts of the oil buffer
                -- Set to `false` to disable, or "name" to keep it on the file names
                constrain_cursor = "name",
                -- Keymaps in oil buffer. Can be any value that `vim.keymap.set` accepts OR a table of keymap
                -- options with a `callback` (e.g. { callback = function() ... end, desc = "", mode = "n" })
                -- Additionally, if it is a string that matches "actions.<name>",
                -- it will use the mapping at require("oil.actions").<name>
                -- Set to `false` to remove a keymap
                -- See :help oil-actions for a list of all available actions
                keymaps = {
                    ["<C-h>"] = { "actions.show_help", mode = "n", desc = "Show help panel" },
                    ["<CR>"] = { "actions.select", mode = "n", desc = "Open file or folder" },
                    ["<leader>d"] = { "actions.close", mode = "n", desc = "Open file explorer in float" },
                    ["<leader>D"] = { "actions.close", mode = "n", desc = "Open file explorer" },
                    ["<Esc>"] = { "actions.close", mode = "n", desc = "Close file explorer" },
                    ["<BS>"] = { "actions.parent", mode = "n", desc = "Go to parent folder" },
                    ["<C-.>"] = { "actions.toggle_hidden", mode = "n", desc = "Toggle hidden files" },
                },
                -- Set to false to disable all of the above keymaps
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
                -- Configuration for the floating window in oil.open_float
                float = {
                    padding = 10,
                    preview_split = "right",
                },
            })
        end
    }
}
