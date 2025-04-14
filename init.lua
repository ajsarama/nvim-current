vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.showmode = false

require("config.lazy")

vim.lsp.enable("luals")
vim.diagnostic.config({ virtual_lines = true })

