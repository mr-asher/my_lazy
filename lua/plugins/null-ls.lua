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
        nls.builtins.formatting.deno_fmt,
        nls.builtins.formatting.prettier.with({ filetypes = { "html", "css", "markdown", "astro" } }),
        nls.builtins.formatting.trim_newlines,
        nls.builtins.formatting.trim_whitespace,
        nls.builtins.formatting.fixjson,
        nls.builtins.diagnostics.flake8,
        nls.builtins.diagnostics.eslint,
      },
    }
  end,
}
