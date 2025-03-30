require("conform").setup({
  formatters_by_ft = {
    cs = { "dotnet-format" },
    tex = { "latexindent" },
  },
})

require("lint").linters_by_ft = {
  cs = { "roslyn" },
}
