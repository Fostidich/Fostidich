local HOME = os.getenv("HOME")

return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = { "markdownlint-cli2" },
      },
      linters = {
        ["markdownlint-cli2"] = {
          cmd = "markdownlint-cli2",
          args = {
            "--config",
            HOME .. "/.config/nvim/.markdownlint.json",
            "--",
            "${INPUT}",
          },
          stream = "stdout",
          ignore_exitcode = true,
          parser = function(output, _)
            local diagnostics = {}
            for line in vim.gsplit(output, "\n") do
              local filename, lnum, col, msg = line:match("^([^:]+):(%d+):(%d+): (.+)$")
              if filename and lnum and col and msg then
                table.insert(diagnostics, {
                  lnum = tonumber(lnum) - 1,
                  col = tonumber(col) - 1,
                  message = msg,
                  severity = vim.diagnostic.severity.WARN,
                  source = "markdownlint",
                })
              end
            end
            return diagnostics
          end,
        },
      },
    },
  },
}
