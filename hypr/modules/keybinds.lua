local M = {}

function M.setup(vars)
    local mainMod = vars.mainMod
    local terminal = vars.terminal
    local fileManager = vars.fileManager
    local browser = vars.browser
    local launcher = vars.menu
    local screenshotArea = vars.screenshotArea
    local screenshotFull = vars.screenshotFull

    ----------------
    ---- APPS ------
    ----------------

    hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
    hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(launcher))
    hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(launcher))
    hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
    hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))

    ----------------
    ---- WINDOW ----
    ----------------

    hl.bind(mainMod .. " + Q", hl.dsp.window.close())
    hl.bind("ALT + F4", hl.dsp.window.close())
    hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
    hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ action = "toggle", mode = "fullscreen" }))
    hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({ action = "toggle", mode = "maximized" }))
    hl.bind(mainMod .. " + P", hl.dsp.window.pseudo({ action = "toggle" }))

    -- SUPER+J is used for focus-down, so split direction gets its own key.
    hl.bind(mainMod .. " + T", hl.dsp.layout("togglesplit"))

    ----------------
    ---- FOCUS -----
    ----------------

    hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
    hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
    hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
    hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

    hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
    hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
    hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
    hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

    -------------------------
    ---- MOVE WINDOW --------
    -------------------------

    hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
    hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
    hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
    hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

    hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
    hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
    hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
    hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({ direction = "down" }))

    -------------------------
    ---- RESIZE WINDOW ------
    -------------------------

    hl.bind(mainMod .. " + CTRL + H", hl.dsp.window.resize({ x = -40, y = 0, relative = true }))
    hl.bind(mainMod .. " + CTRL + L", hl.dsp.window.resize({ x = 40, y = 0, relative = true }))
    hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.resize({ x = 0, y = -40, relative = true }))
    hl.bind(mainMod .. " + CTRL + J", hl.dsp.window.resize({ x = 0, y = 40, relative = true }))

    hl.bind(mainMod .. " + CTRL + left", hl.dsp.window.resize({ x = -40, y = 0, relative = true }))
    hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.resize({ x = 40, y = 0, relative = true }))
    hl.bind(mainMod .. " + CTRL + up", hl.dsp.window.resize({ x = 0, y = -40, relative = true }))
    hl.bind(mainMod .. " + CTRL + down", hl.dsp.window.resize({ x = 0, y = 40, relative = true }))

    -------------------------
    ---- WORKSPACES ---------
    -------------------------

    for i = 1, 10 do
        local key = i % 10

        hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
        hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
    end

    hl.bind(mainMod .. " + TAB", hl.dsp.focus({ workspace = "previous" }))
    hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
    hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
    hl.bind(mainMod .. " + bracketleft", hl.dsp.focus({ workspace = "e-1" }))
    hl.bind(mainMod .. " + bracketright", hl.dsp.focus({ workspace = "e+1" }))

    -------------------------------
    ---- SPECIAL WORKSPACE --------
    -------------------------------
    -- code:49 is `~` key
    hl.bind(mainMod .. " + code:49", hl.dsp.workspace.toggle_special("magic"))
    hl.bind(mainMod .. " + SHIFT + code:49", hl.dsp.window.move({ workspace = "special:magic" }))

    ----------------
    ---- MOUSE -----
    ----------------

    hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
    hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

    ---------------------
    ---- SCREENSHOT -----
    ---------------------

    hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(screenshotArea))
    hl.bind("PRINT", hl.dsp.exec_cmd(screenshotFull))

    -------------------------
    ---- MEDIA / VOLUME -----
    -------------------------

    hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
    hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
    hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
    hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

    hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
    hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

    hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
    hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
    hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
    hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

    ----------------
    ---- LOCK ------
    ----------------

    hl.bind(mainMod .. " + ALT + L", hl.dsp.exec_cmd("command -v hyprlock >/dev/null 2>&1 && hyprlock"))
    hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("command -v wlogout >/dev/null 2>&1 && wlogout || command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"))
end

return M
