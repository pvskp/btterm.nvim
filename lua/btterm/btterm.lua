local M = {}

local autocmd = require("btterm.autocommands")
M.setup = function(_) end

local trigger_event = function(event)
	vim.api.nvim_exec_autocmds("User", { pattern = event })
end

M.open_side_term = function()
	vim.cmd("vsplit")
	vim.cmd("wincmd l")
	vim.cmd("term")
	trigger_event(autocmd.BTTERM_OPEN_EVENT)
end

M.open_bottom_term = function()
	vim.cmd("split")
	vim.cmd("wincmd j")
	vim.cmd("term")
	trigger_event(autocmd.BTTERM_OPEN_EVENT)
end

return M
