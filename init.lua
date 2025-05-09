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
vim.opt.ignorecase = true
vim.opt.smartcase = true

require("config.lazy")

vim.lsp.enable("luals")
vim.diagnostic.config({ virtual_lines = { current_line = true } })

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client == nil then return end
		vim.keymap.set("n", "gf", vim.lsp.buf.format, { desc = "Lsp format" })
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Lsp definition" })
	end,
})

vim.keymap.set("v", "<m-y>", "\"+y", { desc = "yank to system clipboard" })
vim.keymap.set("c", "<m-p>", "<c-r>+", { desc = "paste from system clipboard" })
