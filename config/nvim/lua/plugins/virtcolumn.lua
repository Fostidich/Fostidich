return {
    "lukas-reineke/virt-column.nvim",
    opts = {
        char = "·",
        highlight = "VirtColumn",
        virtcolumn = "80",
    },
    config = function(_, opts)
        vim.cmd "highlight VirtColumn guifg=#7aa2f7"
        require("virt-column").setup(opts)
    end
}
