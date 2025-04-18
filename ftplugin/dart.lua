-- Dart uses 2 space formatting, due to heavy nesting
-- vim.bo sets the settings for the current buffer
vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.expandtab = true

vim.opt_local.foldmethod = 'expr'
vim.opt_local.foldexpr = 'v:lua.vim.lsp.foldexpr()'
vim.opt_local.foldlevel = 99
vim.opt_local.foldlevelstart = 99

