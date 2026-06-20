-- ~/.config/hypr/hyprland.lua
-- Modular Hyprland Lua config.

local config = require("lua.config")

local module_names = {
	"lua.modules.monitors",
	"lua.modules.input",
	"lua.modules.appearance",
	"lua.modules.rules",
	"lua.modules.autostart",
	"lua.modules.bindings",
}

for _, name in ipairs(module_names) do
	local module = require(name)
	assert(type(module.apply) == "function", name .. " must	export apply(config)")
	module.apply(config)
end
