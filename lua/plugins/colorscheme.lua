-- Lua
local auto_dark = {
	"f-person/auto-dark-mode.nvim",
	dependencies = { "rose-pine/neovim" },
	priority = 1000,
	opts = {
		set_dark_mode = function()
			vim.o.background = 'dark'
			vim.cmd.colorscheme('rose-pine')
		end,
		set_light_mode = function()
			vim.o.background = 'light'
			vim.cmd.colorscheme('rose-pine')
		end,
	}
}

-- lua/plugins/rose-pine.lua
local rose = {
	"rose-pine/neovim",
	priority = 1000,
	name = "rose-pine",
	config = function(opts)
		require("rose-pine").setup()
	end
}



return { auto_dark, rose }
