return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require "telescope.builtin"
            vim.keymap.set("n", "<leader>f", builtin.git_files, { desc = "Search project files" })
            vim.keymap.set("n", "<leader>F", builtin.find_files, { desc = "Search files" })
        end
    }
}
