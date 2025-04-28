return {
	'nvim-flutter/flutter-tools.nvim',
	lazy = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	config = true,
	opts = {
		lsp = {
			on_attach = function(client, bufnr)
				client.server_capabilities.semanticTokensProvider = nil
			end,
		},
	}
}
