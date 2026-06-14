local M = {}

function M.setup()
    hl.window_rule({ match = { class = "firefox" }, no_blur = true })
    --------------------------
    ---- FLOATING WINDOW -----
    --------------------------
    hl.window_rule({
        name = "waybar-wiremix-popup",
        match = {
            class = "waybar-wiremix",
        },
        float = true,
        center = true,
        size = { 900, 600 },
        rounding = 8,
        border_size = 2,
        border_color = "rgb(7aa2f7) rgb(f7768e)",
        no_initial_focus = false,
        confine_pointer= true,
    })
    hl.window_rule({
        name = "clipse-tui-popup",
        match = {
            class = "clipse-tui",
        },
        float = true,
        center = true,
        rounding = 8,
        border_size = 2,
        border_color = "rgb(7aa2f7) rgb(f7768e)",
        no_initial_focus = false,
        confine_pointer= true,
        no_anim = true,
    })
    
    hl.window_rule({
        name = "moonlight-fullscreen-stream",
        match = {
            class = "com\\.moonlight_stream\\.Moonlight",
            title = ".*- Moonlight",
        },
        fullscreen = true,
        no_anim = true,
    })
    hl.window_rule({
        name = "seahorse-float",
        match = {
            class = "(org.gnome.seahorse.Application)",
        },
        float = true,
        center = true,
    })
    hl.window_rule({
        name = "fcitx5-config-qt-float",
        match = {
            class = "(org.fcitx.fcitx5-config-qt)",
        },
        float = true,
        center = true,
    })
end

return M
