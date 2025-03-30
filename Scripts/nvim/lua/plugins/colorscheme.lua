return {
  -- Add Tokyo Night theme
  { "folke/tokyonight.nvim" },

  -- Configure LazyVim to load Tokyo Night
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
