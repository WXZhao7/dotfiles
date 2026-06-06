local M = {}

M.mainMod = "SUPER"

-- Common programs. Keep these values in one place so modules can stay small.
M.menu = "fuzzel"
M.terminal = "kitty"
M.fileManager = "thunar"
M.browser = "firefox"

-- Screenshot tools: grim + slurp + wl-clipboard.
M.screenshotArea = "grim -g \"$(slurp)\" - | wl-copy"
M.screenshotFull = "grim - | wl-copy"

return M
