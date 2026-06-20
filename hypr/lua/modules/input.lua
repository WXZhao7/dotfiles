local M = {}

function M.apply(_config)
	hl.config({
		input = {
			kb_layout = "us",
			kb_variant = "",
			kb_model = "",
			kb_options = "",
			kb_rules = "",

			follow_mouse = 1,
			sensitivity = 0,

			touchpad = { natural_scroll = false },
		},
	})
end

return M
