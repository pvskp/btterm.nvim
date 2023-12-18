-- Term auto-insert
local M = {}
M.BTTERM_OPEN_EVENT = "BTTermOpen"

local btterm_augroup = vim.api.nvim_create_augroup("btterm_augroup", { clear = false })
-- local events = { "BufWinEnter", "TermOpen", "WinEnter" }
local events = { "User" }

vim.api.nvim_create_autocmd(events, {
	group = btterm_augroup,
	pattern = M.BTTERM_OPEN_EVENT,
	command = "startinsert",
})

vim.api.nvim_create_autocmd(events, {
	group = btterm_augroup,
	pattern = M.BTTERM_OPEN_EVENT,
	command = "set nonumber",
})

vim.api.nvim_create_autocmd(events, {
	group = btterm_augroup,
	pattern = M.BTTERM_OPEN_EVENT,
	command = "set norelativenumber",
})

return M
