local debugger = { "mfussenegger/nvim-dap" }

local virtual_text = {
	"theHamsta/nvim-dap-virtual-text",
	dependencies = { "mfussenegger/nvim-dap" },
	config = true,
}

local ui = {
	"rcarriga/nvim-dap-ui",
	dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
	config = function()
		require("dapui").setup()
		local dap, dapui = require("dap"), require("dapui")
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}

return { debugger, virtual_text, ui }
