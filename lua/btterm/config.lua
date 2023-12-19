local M = {}

local config = {
	bottom_term_key = "<M-s>",
	side_term_key = "<M-d>",
}

M.get = function(key)
	if key then
		return config[key]
	end
end

M.set = function(user_config)
	user_config = user_config or {}
	config = vim.tbl_deep_extend("force", config, user_config)
	return config
end

return M
