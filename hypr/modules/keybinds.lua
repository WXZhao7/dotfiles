local M = {}

function M.setup(vars)
	local mainMod = vars.mainMod
	local terminal = vars.terminal
	local fileManager = vars.fileManager
	local browser = vars.browser
	local launcher = vars.menu
	local clipboard = vars.clipboard
	local screenshotArea = vars.screenshotArea
	local screenshotFull = vars.screenshotFull

	----------------
	---- APPS ------
	----------------

	hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal), { description = "Open terminal" })
	hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(launcher), { description = "Open application launcher" })
	hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(launcher), { description = "Open application launcher" })
	hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager), { description = "Open file manager" })
	hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser), { description = "Open web browser" })

	----------------
	---- WINDOW ----
	----------------

	hl.bind(mainMod .. " + Q", hl.dsp.window.close(), { description = "Close focused window" })
	hl.bind("ALT + F4", hl.dsp.window.close(), { description = "Close focused window" })
	hl.bind(mainMod .. " + X", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating mode" })
	hl.bind(
		mainMod .. " + mouse:275",
		hl.dsp.window.fullscreen({ action = "toggle", mode = "fullscreen" }),
		{ description = "Toggle fullscreen mode" }
	)
	hl.bind(
		mainMod .. " + F",
		hl.dsp.window.fullscreen({ action = "toggle", mode = "fullscreen" }),
		{ description = "Toggle fullscreen mode" }
	)
	hl.bind(
		mainMod .. " + mouse:276",
		hl.dsp.window.fullscreen({ action = "toggle", mode = "maximized" }),
		{ description = "Toggle maximized mode" }
	)
	hl.bind(
		mainMod .. " + M",
		hl.dsp.window.fullscreen({ action = "toggle", mode = "maximized" }),
		{ description = "Toggle maximized mode" }
	)
	hl.bind(
		mainMod .. " + P",
		hl.dsp.window.pseudo({ action = "toggle" }),
		{ description = "Toggle pseudo fullscreen mode" }
	)

	-- SUPER+J is used for focus-down, so split direction gets its own key.
	hl.bind(mainMod .. " + T", hl.dsp.layout("togglesplit"), { description = "Toggle split orientation" })

	----------------
	---- FOCUS -----
	----------------

	hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }), { description = "Focus left" })
	hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }), { description = "Focus right" })
	hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }), { description = "Focus up" })
	hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }), { description = "Focus down" })

	hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }), { description = "Focus left" })
	hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }), { description = "Focus right" })
	hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }), { description = "Focus up" })
	hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }), { description = "Focus down" })

	-------------------------
	---- MOVE WINDOW --------
	-------------------------

	hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }), { description = "Move window left" })
	hl.bind(
		mainMod .. " + SHIFT + L",
		hl.dsp.window.move({ direction = "right" }),
		{ description = "Move window right" }
	)
	hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }), { description = "Move window up" })
	hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }), { description = "Move window down" })

	hl.bind(
		mainMod .. " + SHIFT + left",
		hl.dsp.window.move({ direction = "left" }),
		{ description = "Move window left" }
	)
	hl.bind(
		mainMod .. " + SHIFT + right",
		hl.dsp.window.move({ direction = "right" }),
		{ description = "Move window right" }
	)
	hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "up" }), { description = "Move window up" })
	hl.bind(
		mainMod .. " + SHIFT + down",
		hl.dsp.window.move({ direction = "down" }),
		{ description = "Move window down" }
	)

	-------------------------
	---- RESIZE WINDOW ------
	-------------------------

	hl.bind(
		mainMod .. " + CTRL + H",
		hl.dsp.window.resize({ x = -40, y = 0, relative = true }),
		{ repeating = true, description = "Resize window left" }
	)
	hl.bind(
		mainMod .. " + CTRL + L",
		hl.dsp.window.resize({ x = 40, y = 0, relative = true }),
		{ repeating = true, description = "Resize window right" }
	)
	hl.bind(
		mainMod .. " + CTRL + K",
		hl.dsp.window.resize({ x = 0, y = -40, relative = true }),
		{ repeating = true, description = "Resize window up" }
	)
	hl.bind(
		mainMod .. " + CTRL + J",
		hl.dsp.window.resize({ x = 0, y = 40, relative = true }),
		{ repeating = true, description = "Resize window down" }
	)

	hl.bind(
		mainMod .. " + CTRL + left",
		hl.dsp.window.resize({ x = -40, y = 0, relative = true }),
		{ repeating = true, description = "Resize window left" }
	)
	hl.bind(
		mainMod .. " + CTRL + right",
		hl.dsp.window.resize({ x = 40, y = 0, relative = true }),
		{ repeating = true, description = "Resize window right" }
	)
	hl.bind(
		mainMod .. " + CTRL + up",
		hl.dsp.window.resize({ x = 0, y = -40, relative = true }),
		{ repeating = true, description = "Resize window up" }
	)
	hl.bind(
		mainMod .. " + CTRL + down",
		hl.dsp.window.resize({ x = 0, y = 40, relative = true }),
		{ repeating = true, description = "Resize window down" }
	)

	-------------------------
	---- WORKSPACES ---------
	-------------------------

	for i = 1, 10 do
		local key = i % 10

		hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }), { description = "Focus workspace " .. i })
		hl.bind(
			mainMod .. " + SHIFT + " .. key,
			hl.dsp.window.move({ workspace = i }),
			{ description = "Move window to workspace " .. i }
		)
	end

	hl.bind("SUPER + G", function()
		hl.plugin.hyprexpo.expo("toggle")
	end)
	-- hl.bind("SUPER + Escape", hl.plugin.hymission.close)
	--     hl.bind(mainMod .. " + TAB", hl.dsp.focus({workspace = "previous"}),
	--             {description = "Focus previous workspace"})
	hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }), { description = "Focus workspace e+1" })
	hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }), { description = "Focus workspace e-1" })
	hl.bind(mainMod .. " + bracketleft", hl.dsp.focus({ workspace = "e-1" }), { description = "Focus workspace e-1" })
	hl.bind(mainMod .. " + bracketright", hl.dsp.focus({ workspace = "e+1" }), { description = "Focus workspace e+1" })

	-------------------------------
	---- SPECIAL WORKSPACE --------
	-------------------------------
	-- code:49 is `~` key
	hl.bind(
		mainMod .. " + code:49",
		hl.dsp.workspace.toggle_special("magic"),
		{ description = "Toggle special workspace" }
	)
	hl.bind(
		mainMod .. " + SHIFT + code:49",
		hl.dsp.window.move({ workspace = "special:magic" }),
		{ description = "Move window to special workspace" }
	)

	----------------
	---- MOUSE -----
	----------------

	hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true, description = "Drag window" })
	hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true, description = "Resize window" })

	---------------------
	---- SCREENSHOT -----
	---------------------

	hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(screenshotArea), { description = "Take area screenshot" })
	hl.bind("PRINT", hl.dsp.exec_cmd(screenshotFull), { description = "Take full screenshot" })

	-------------------------
	---- MEDIA / VOLUME -----
	-------------------------

	hl.bind(
		"XF86AudioRaiseVolume",
		hl.dsp.exec_cmd("wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"),
		{ locked = true, repeating = true },
		{ description = "Increase volume" }
	)
	hl.bind(
		"XF86AudioLowerVolume",
		hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
		{ locked = true, repeating = true },
		{ description = "Decrease volume" }
	)
	hl.bind(
		"XF86AudioMute",
		hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
		{ locked = true },
		{ description = "Mute audio" }
	)
	hl.bind(
		"XF86AudioMicMute",
		hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
		{ locked = true },
		{ description = "Mute microphone" }
	)

	hl.bind(
		"XF86MonBrightnessUp",
		hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),
		{ locked = true, repeating = true },
		{ description = "Increase brightness" }
	)
	hl.bind(
		"XF86MonBrightnessDown",
		hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),
		{ locked = true, repeating = true },
		{ description = "Decrease brightness" }
	)

	hl.bind(
		"XF86AudioPlay",
		hl.dsp.exec_cmd("playerctl play-pause"),
		{ locked = true },
		{ description = "Play/Pause audio" }
	)
	hl.bind(
		"XF86AudioPause",
		hl.dsp.exec_cmd("playerctl play-pause"),
		{ locked = true },
		{ description = "Play/Pause audio" }
	)
	hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true }, { description = "Next track" })
	hl.bind(
		"XF86AudioPrev",
		hl.dsp.exec_cmd("playerctl previous"),
		{ locked = true },
		{ description = "Previous track" }
	)

	----------------
	---- LOCK ------
	----------------

	hl.bind(
		mainMod .. " + ALT + L",
		hl.dsp.exec_cmd("command -v hyprlock >/dev/null 2>&1 && hyprlock"),
		{ description = "Lock the screen" }
	)
	hl.bind(mainMod .. " + ALT + DELETE", hl.dsp.exec_cmd("uwsm stop"), { description = "Exit Hyprland by UWSM" })

	-------------------
	---- clipboard ----
	-------------------
	hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(clipboard), { description = "Open clipboard manager" })
	hl.bind("ALT + Tab", hl.dsp.exec_cmd("snappy-switcher next --mod alt"), { description = "Switch to next window" })

	hl.bind(
		mainMod .. " + F1",
		hl.dsp.exec_cmd("mark-shot"),
		{ description = "Take screenshot and open in image viewer" }
	)
end

return M
