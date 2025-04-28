return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = true,
	opts = {
		sections = {
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
	},
}
