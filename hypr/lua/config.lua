return {
	mod = "SUPER",

	apps = {
		menu = "fuzzel",
		terminal = "footclient",
		file_manager = "thunar",
		browser = "firefox",
	},

	commands = {
		clipboard = "footclient --app-id clipse-tui -e clipse",
		screenshot_area = 'grim -g "$(slurp)" - | wl-copy',
		screenshot_full = "grim - | wl-copy",
	},
}
