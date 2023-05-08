require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tsserver", "jsonls", "emmet_ls", "stylelint_lsp", "solidity" },
  automatic_installation = true,
})
