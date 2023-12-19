local config = require("btterm.config")
local btterm = require("btterm.btterm")
local autocmd = require("btterm.autocommands")

local M = {}

M.set_keymaps = function()
	vim.keymap.set({ "n", "t", "i" }, config.get("bottom_term_key"), function()
		local mode = vim.api.nvim_get_mode().mode
		if mode == "t" or mode == "i" then
			vim.cmd("stopinsert")
		end
		btterm.open_bottom_term()
	end)

	vim.keymap.set({ "n", "t", "i" }, config.get("side_term_key"), function()
		if vim.api.nvim_get_mode().mode == "t" then
			vim.cmd("stopinsert")
		end
		btterm.open_side_term()
	end)
end

return M
