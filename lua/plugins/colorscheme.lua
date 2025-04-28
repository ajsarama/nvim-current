-- Lua
local auto_dark = {
	"f-person/auto-dark-mode.nvim",
	opts = {
		set_dark_mode = function()
			vim.o.background = 'dark'
			vim.cmd.colorscheme 'solarized'
		end,
		set_light_mode = function()
			vim.o.background = 'light'
			vim.cmd.colorscheme 'solarized'
		end,
	}
}

local solarized = {
	'maxmx03/solarized.nvim',
	lazy = false,
	priority = 1000,
	opts = {
		variant = "spring",
		styles = {
			enabled = false,
		},
	},
	config = function(_, opts)
		vim.o.termguicolors = true
		require('solarized').setup(opts)
	end,
}

return { auto_dark, solarized }
