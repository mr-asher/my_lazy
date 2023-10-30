return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
      sources = {
        nls.builtins.formatting.stylua,
        -- nls.builtins.formatting.prettier,
        nls.builtins.formatting.black,
        nls.builtins.formatting.djlint,
        nls.builtins.formatting.trim_newlines,
        nls.builtins.formatting.trim_whitespace,
        nls.builtins.formatting.fixjson,
        nls.builtins.formatting.gofmt,
        nls.builtins.formatting.goimports_reviser,

        -- nls.builtins.diagnostics.flake8,
        nls.builtins.diagnostics.black,
        nls.builtins.diagnostics.djlint,
        -- nls.builtins.diagnostics.eslint,
        nls.builtins.diagnostics.revive,
        nls.builtins.diagnostics.gospel,
      },
    }
  end,
}
