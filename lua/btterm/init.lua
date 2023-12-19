local M = {}
require("btterm.autocommands")

local config = require("btterm.config")
local keymaps = require("btterm.keymaps")
M.setup = function(opts)
	config.set(opts)
	keymaps.set_keymaps()
end
return M
