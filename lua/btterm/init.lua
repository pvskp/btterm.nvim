local M = {}
require("btterm.autocommands")

local autocmd = require("btterm.autocommands")

local trigger_event = function(event)
	vim.api.nvim_command("doautocmd User " .. event)
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

M.setup = function(_) end

return M
