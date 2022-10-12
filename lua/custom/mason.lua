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
	ensure_installed = { "sumneko_lua", "tsserver", "jsonls", "emmet_ls", "stylelint_lsp", "solidity", "solhint" },
	automatic_installation = true,
})
