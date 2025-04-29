return {
	"ibhagwan/fzf-lua",
	lazy = false,
	dependencies = { "echasnovski/mini.icons" },
	opts = {
		"hide",
		fzf_colors = true,
		winopts = {
			fullscreen = true,
		},
		defaults = {
			file_icons = "mini",
		},
	},
	cmd = "FzfLua",
	init = function()
		require("fzf-lua").register_ui_select()
		vim.keymap.set("n", "<leader>ff", function() require("fzf-lua").files() end, { desc = "Fzf find files" })
		vim.keymap.set("n", "<leader>fg", function() require("fzf-lua").live_grep_native() end,
			{ desc = "Fzf live grep" })
		vim.keymap.set("n", "<leader>fl", function() require("fzf-lua").lgrep_curbuf() end,
			{ desc = "Fzf live grep current buffer" })
		vim.keymap.set("n", "<leader>fr", function() require("fzf-lua").lsp_references() end,
			{ desc = "Fzf lsp references" })
		vim.keymap.set("n", "<leader>fdf", function() require("fzf-lua").lsp_definitions() end,
			{ desc = "Fzf lsp definitions" })
		vim.keymap.set("n", "<leader>fdc", function() require("fzf-lua").lsp_declarations() end,
			{ desc = "Fzf lsp declarations" })
		vim.keymap.set("n", "<leader>fs", function() require("fzf-lua").lsp_live_workspace_symbols() end,
			{ desc = "Fzf lsp workspace symbols" })
		vim.keymap.set("n", "<leader>fi", function() require("fzf-lua").lsp_incoming_calls() end,
			{ desc = "Fzf lsp incoming calls" })
		vim.keymap.set("n", "<leader>fo", function() require("fzf-lua").lsp_outgoing_calls() end,
			{ desc = "Fzf lsp outgoing calls" })
		vim.keymap.set("n", "<leader>fe", function() require("fzf-lua").diagnostics_document() end,
			{ desc = "Fzf lsp diagnostics document" })
		vim.keymap.set("n", "<leader>fw", function() require("fzf-lua").diagnostics_workspace() end,
			{ desc = "Fzf lsp diagnostics workspace" })
		vim.keymap.set("n", "<leader>fk", function() require("fzf-lua").keymaps() end, { desc = "Fzf keymaps" })
		vim.keymap.set("n", "<leader>fh", function() require("fzf-lua").command_history() end,
			{ desc = "Fzf command history" })
		vim.keymap.set("n", "<leader>fa", function() require("fzf-lua").resume() end, { desc = "Fzf resume" })
	end,
}
