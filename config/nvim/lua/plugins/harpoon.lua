return {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require "harpoon"
        harpoon:setup()

        -- Telescope UI configuration
        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end
            require("telescope.pickers").new({}, {
                prompt_title = "Pinned Files",
                finder = require("telescope.finders").new_table({
                    results = file_paths,
                }),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
            }):find()
        end

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end,
            { desc = "Pin a file" })
        vim.keymap.set("n", "<leader>s", function() toggle_telescope(harpoon:list()) end,
            { desc = "Show pinned files" })
        vim.keymap.set("n", "<leader>S", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
            { desc = "Show pinned files" })

        vim.keymap.set("n", "<leader>q", function() harpoon:list():select(1) end,
            { desc = "Go to first pinned file" })
        vim.keymap.set("n", "<leader>w", function() harpoon:list():select(2) end,
            { desc = "Go to second pinned file" })
        vim.keymap.set("n", "<leader>e", function() harpoon:list():select(3) end,
            { desc = "Go to third pinned file" })
        vim.keymap.set("n", "<leader>r", function() harpoon:list():select(4) end,
            { desc = "Go to fourth pinned file" })

        vim.keymap.set("n", "<leader>Q", function() harpoon:list():prev() end,
            { desc = "Go to previous pinned file" })
        vim.keymap.set("n", "<leader>W", function() harpoon:list():next() end,
            { desc = "Go to next pinned file" })
    end
}
