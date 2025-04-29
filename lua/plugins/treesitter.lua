local rainbow = { "https://gitlab.com/HiPhish/rainbow-delimiters.nvim.git" }

local treesitter = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	config = function()
		--- @diagnostic disable:missing-fields
		require 'nvim-treesitter.configs'.setup {
			-- A list of parser names, or "all" (the listed parsers MUST always be installed)
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "dart", "fish" },

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
			-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

			indent = {
				enable = { "lua", "fish" },
			},

			highlight = {
				enable = { "lua", "dart", "markdown", "markdown_inline", "fish" },

				-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = { "dart" },
			},
		}
	end,
}

local autopairs = {
    'altermo/ultimate-autopair.nvim',
    event={'InsertEnter','CmdlineEnter'},
    branch='v0.6', --recommended as each new version will have breaking changes
    opts={
        --Config goes here
    },
}

return { rainbow, treesitter, autopairs }
