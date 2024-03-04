local dap = require("dap")

dap.adapters["pwa-node"] = {
	type = "server",
	host = "localhost",
	port = "${port}",
	executable = {
		-- command = "node",
		-- -- 💀 Make sure to update this path to point to your installation
		-- args = { "/path/to/js-debug/src/dapDebugServer.js", "${port}" },
		command = "js-debug-adapter",
		args = { "${port}" },
	},
}

local js_languages = { "typescript", "javascript", "typescript" }
for _, language in ipairs(js_languages) do
    dap.configurations[language] = {
        {
            type = "pwa-node",
            request = "launch",
            name = "Launch file",
            console = "integratedTerminal",
            program = "${file}",
            cwd = "${workspaceFolder}",
        },
        {
            type = "pwa-node",
            request = "attach",
            name = "Attach launch --inspect node",
            console = "integratedTerminal",
            processId = require("dap.utils").pick_process,
            cwd = "${workspaceFolder}",
        },
        {
            type = "pwa-node",
            request = "launch",
            name = "Launch Test Program (pwa-node with vitest)",
            cwd = "${workspaceFolder}",
            program = "${workspaceFolder}/node_modules/vitest/vitest.mjs",
            args = { "--threads", "false", },
            autoAttachChildProcesses = false,
            trace = true,
            console = "integratedTerminal",
            sourceMaps = true,
            smartStep = true,
        },
    }
end
