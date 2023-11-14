return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      djangohtml = { "djlint" },
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      python = { "flake8" },
    },
  },
}
