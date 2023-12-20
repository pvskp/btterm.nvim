local config = require("btterm.config")
local btterm = require("btterm.btterm")
local autocmd = require("btterm.autocommands")

local M = {}

local function open_term(direction)
	vim.cmd("stopinsert")
	if direction == "bottom" then
		btterm.open_bottom_term()
		return
	end

	btterm.open_side_term()
end

M.set_keymaps = function()
	vim.keymap.set({ "n", "t", "i" }, config.get("bottom_term_key"), function()
		open_term("bottom")
	end)
	vim.keymap.set({ "n", "t", "i" }, config.get("side_term_key"), function()
		open_term("side")
	end)
end

return M
