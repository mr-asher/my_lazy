return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ---@type lspconfig.options
      -- return true if you don't want this server to be setup with lspconfig
      ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
      servers = {
        sourcery = {
          init_options = {
            editor_version = "vim",
            extension_version = "vim.lsp",
            token = os.getenv("SOURCERY_KEY"),
          },
        },
      },
      setup = {
        -- Specify * to use this function as a fallback for any server
        -- ["*"] = function(server, opts) end,
      },
    },
  },
}
