local M = {}

local autocmd = require("btterm.autocommands")
M.setup = function(_) end

local trigger_event = function(event)
	vim.api.nvim_exec_autocmds("User", { pattern = event })
end

local function open_terminal(split_command, window_command, autoinsert)
	vim.cmd(split_command)
	vim.cmd(window_command)
	if autoinsert then
		vim.cmd("startinsert")
	end
	local term_buf = vim.api.nvim_create_buf(false, true)
	vim.api.nvim_set_current_buf(term_buf)
	vim.fn.termopen(vim.o.shell) -- ou outro shell de sua preferência
	vim.api.nvim_buf_set_var(term_buf, autocmd.BTTERM_VAR, true)
	trigger_event(autocmd.BTTERM_OPEN_EVENT)
end

M.open_side_term = function()
	open_terminal("vsplit", "wincmd l", false)
end

M.open_bottom_term = function()
	open_terminal("split", "wincmd j", false)
end
return M
