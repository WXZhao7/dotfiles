local M = {}

function M.setup()
	hl.config({
		general = {
			gaps_in = 3,
			gaps_out = 6,
			border_size = 2,
			resize_on_border = true,
			allow_tearing = false,
			layout = "dwindle",
		},

		decoration = {
			rounding = 4,
			active_opacity = 1.0,
			inactive_opacity = 1.0,

			blur = { enabled = true },
			shadow = { enabled = true },
		},

		animations = { enabled = true },

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

		dwindle = { preserve_split = true },

		misc = {
			force_default_wallpaper = 0,
			disable_hyprland_logo = true,
			disable_splash_rendering = true,
		},
	})
	hl.config({
		plugin = {
			hyprexpo = {
				columns = 2,
				gaps_in = 5,
				gaps_out = 0,
				bg_col = "rgb(111111)",
				workspace_method = "center current",
				gesture_distance = 200,
				cancel_key = "escape",
				show_cursor = 1,
			},
		},
	})
end

return M
