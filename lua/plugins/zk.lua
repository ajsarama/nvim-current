return {
	"zk-org/zk-nvim",
	config = function()
		require("zk").setup({
			picker = "fzf_lua",
		})
	end,
	init = function()
		vim.keymap.set("n", "<leader>zn", "<cmd>ZkNew<cr>")
		vim.keymap.set("n", "<leader>ze", "<cmd>ZkNotes<cr>")
	end,
}
