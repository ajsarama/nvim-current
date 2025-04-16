local dart= { "dart-lang/dart-vim-plugin" }

local flutter =
{
	'nvim-flutter/flutter-tools.nvim',
	lazy = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	opts = {
		debugger = {
			enabled = true
		}
	},
}

return { dart, flutter }
