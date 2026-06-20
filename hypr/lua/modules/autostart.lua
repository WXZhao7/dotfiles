local M = {}

function M.apply(_config)
	hl.on("hyprland.start", function()
		hl.exec_cmd("hyprpm reload -n")
		-- UWSM manages the environment, session targets, portals, and user services.
		-- Keep only Hyprland-specific one-shot commands here.
	end)
end

return M
