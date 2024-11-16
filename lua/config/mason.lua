require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

-- Ensure LSP servers are installed (optional)
require("mason-lspconfig").setup({
  ensure_installed = { "pyright" }, -- Add other language servers here
})
