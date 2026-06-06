-- ~/.config/hypr/hyprland.lua
-- Modular Hyprland Lua config.

local vars = require("modules.vars")

local modules = {
    "modules.monitors",
    "modules.env",
    "modules.autostart",
    "modules.core",
    "modules.keybinds",
}

for _, module_name in ipairs(modules) do
    require(module_name).setup(vars)
end
