local rose = {
	"rose-pine/neovim",
	priority = 1000,
	name = "rose-pine",
	config = function(opts)
		require("rose-pine").setup()
		vim.o.background = 'light'
		vim.cmd.colorscheme('rose-pine')
	end
}



return { rose }
