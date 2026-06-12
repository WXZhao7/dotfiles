local M = {}

function M.setup()
-- Environment variables are managed by UWSM:
--   ~/.config/uwsm/env
--   ~/.config/uwsm/env-hyprland
-- and SSH_AUTH_SOCK by:
--   ~/.config/environment.d/10-ssh-agent.conf

    -- -- Desktop/session identity for portals and systemd user services.
    -- hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
    -- hl.env("XDG_SESSION_DESKTOP", "Hyprland")
    -- hl.env("XDG_SESSION_TYPE", "wayland")

    -- -- NVIDIA / Wayland app hints.
    -- hl.env("LIBVA_DRIVER_NAME", "nvidia")
    -- hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
    -- hl.env("NVD_BACKEND", "direct")
    -- hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

    -- -- Cursor size.
    -- hl.env("XCURSOR_SIZE", "24")
    -- hl.env("HYPRCURSOR_SIZE", "24")

    -- -- Fcitx/Rime input method.
    -- hl.env("XMODIFIERS", "@im=fcitx")
    -- hl.env("QT_IM_MODULE", "fcitx")
    -- hl.env("SDL_IM_MODULE", "fcitx")

    -- -- Open-SSH agent socket
    -- hl.env("SSH_AUTH_SOCK", os.getenv("XDG_RUNTIME_DIR").."/ssh-agent.socket")
end

return M
