local M = {}

function M.setup()
    hl.on("hyprland.start", function()
        local session_env = table.concat({
            "WAYLAND_DISPLAY",
            "XDG_CURRENT_DESKTOP",
            "XDG_SESSION_DESKTOP",
            "XDG_SESSION_TYPE",
            "HYPRLAND_INSTANCE_SIGNATURE",
            "XMODIFIERS",
            "QT_IM_MODULE",
            "QT_IM_MODULES",
            "SDL_IM_MODULE",
            }, " ")
            
        -- Make Wayland/Hyprland variables visible to systemd user services and D-Bus activated services.
        hl.exec_cmd("dbus-update-activation-environment --systemd " .. session_env)
        hl.exec_cmd("systemctl --user import-environment " .. session_env)

        -- [fix] manually start hyprpolkitagent & xdg-desktop-portal-hyprland at login
        --   service auto-restart and reach start-limit-hit when hyprland shutdown
        hl.exec_cmd("systemctl --user start hyprpolkitagent")
        hl.exec_cmd("systemctl --user start xdg-desktop-portal-hyprland")
        
        -- Desktop services. Command guards keep startup quiet when optional tools are not installed.
        hl.exec_cmd("command -v waybar >/dev/null 2>&1 && waybar")
        hl.exec_cmd("command -v mako >/dev/null 2>&1 && mako")
        hl.exec_cmd("command -v fcitx5 >/dev/null 2>&1 && fcitx5 -d --replace")
        hl.exec_cmd("command -v wl-paste >/dev/null 2>&1 && wl-paste --watch cliphist store")
    end)
end

return M
