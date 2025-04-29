vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.showmode = false
vim.o.winborder = "rounded"

require("config.lazy")

vim.lsp.enable("luals")
vim.lsp.enable("dartls")
vim.diagnostic.config({ virtual_lines = { current_line = true } })

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client == nil then return end
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = false })
			vim.keymap.set("i", "<c-space>", function() vim.lsp.completion.get() end, { desc = "Lsp completion trigger" })
		end
		vim.keymap.set("n", "gf", vim.lsp.buf.format, { desc = "Lsp format" })
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Lsp definition" })
	end,
})

vim.keymap.set("v", "<m-y>", "\"+y", { desc = "yank to system clipboard" })
vim.keymap.set("c", "<m-p>", "<c-r>+", { desc = "paste from system clipboard" })
