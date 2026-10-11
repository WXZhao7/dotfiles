local M = {}

function M.apply(_config)
	hl.config({
		general = {
			gaps_in = 1,
			gaps_out = 2,
			border_size = 1,
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
		dwindle = { preserve_split = true },

		misc = {
			force_default_wallpaper = 0,
			disable_hyprland_logo = true,
			disable_splash_rendering = true,
		},

		-- plugin = {
		-- 	hyprexpo = {
		-- 		columns = 3,
		-- 		gaps_in = 5,
		-- 		gaps_out = 0,
		-- 		bg_col = "rgb(111111)",
		-- 		workspace_method = "center current",
		-- 		gesture_distance = 200,
		-- 		cancel_key = "escape",
		-- 		show_cursor = 1,
		-- 		skip_empty = 1,
		-- 		drag_drop_enable = 0, -- Disable moving windows by dragging workspace previews.
		-- 	},
		-- },
	})
end

return M
