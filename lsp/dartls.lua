return {
	cmd = { "dart", "language-server", "--protocol=lsp" },

	filetypes = { "dart" },

	init_options = {
		closingLabels = true,
		flutterOutline = true,
		onlyAnalyzeProjectsWithOpenFiles = true,
		outline = true,
		suggestFromUnimportedLibraries = true
	},

	root_markers = { ".git" },

	settings = {
		completeFunctionCalls = true,
		showTodos = true,
	},

	on_attach = function(client, bufnr)
		client.server_capabilities.semanticTokensProvider = nil
	end,
}
