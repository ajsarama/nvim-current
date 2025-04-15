vim.api.nvim_create_autocmd("BufWrite", {
	callback = function(args)
		local bufnr = args.buf
		local clients = vim.lsp.get_clients({ bufnr = bufnr })
		if clients and #clients > 0 then
			vim.lsp.buf.format({ bufnr = bufnr })
		end
	end,
})

local trouble = {
	"folke/trouble.nvim",
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>xd",
			"<cmd>Trouble diagnostics toggle focus=true<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>xr",
			"<cmd>Trouble lsp_references toggle focus=true<cr>",
			desc = "References (Trouble)",
		},
		{
			"<leader>xl",
			"<cmd>Trouble lsp toggle<cr>",
			desc = "LSP (Trouble)",
		},
	},
}

local notify = {
	"j-hui/fidget.nvim",
	opts = {
		-- options
	},
}

return { trouble, notify }
