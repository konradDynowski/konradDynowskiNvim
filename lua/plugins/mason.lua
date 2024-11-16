return {
  "williamboman/mason.nvim",
  build = ":MasonUpdate", -- Update registries on install
  dependencies = {
    "williamboman/mason-lspconfig.nvim", -- For LSP servers
    "mason-org/mason-registry",
    "jayp0521/mason-null-ls.nvim", -- For formatters/linters
  },
}
