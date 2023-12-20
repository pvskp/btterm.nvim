-- Term auto-insert
local M = {}

M.BTTERM_VAR = "btterm"

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

-- Closes buff on term close
vim.api.nvim_create_autocmd("TermClose", {
	group = btterm_augroup,
	callback = function(args)
		local bufnr = args.buf
		local status, term = pcall(vim.api.nvim_buf_get_var, bufnr, M.BTTERM_VAR)
		if status and term then
			vim.cmd("close")
		end
	end,
})

vim.api.nvim_create_autocmd("WinEnter", {
	group = btterm_augroup,
	callback = function(args)
		local bufnr = args.buf
		local status, term = pcall(vim.api.nvim_buf_get_var, bufnr, M.BTTERM_VAR)
		if status and term then
			vim.defer_fn(function()
				vim.cmd("startinsert")
			end, 10) -- wait 10ms before entering insert mode
		end
	end,
})

return M
