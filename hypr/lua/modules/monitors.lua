local M = {}

function M.apply(_config)
	-- Fallback rule: use any connected monitor with preferred mode.
	-- Replace output/mode/position after checking `hyprctl monitors all`.
	hl.monitor({
		output = "",
		mode = "highres",
		position = "auto",
		scale = 2,
	})
end

return M
