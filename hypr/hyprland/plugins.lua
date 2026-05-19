--- Plugins Configurations
local palette = require("hyprland/colors")
hl.config({
	plugin = {
		-- Panel over Windows
		hyprbars = {
			enabled = true,
			bar_color = palette.base,
			bar_height = 28,
			bar_blur = true,
			col = {
				text = palette.text,
			},
			bar_title_enabled = true,
			bar_text_size = 20,
			bar_text_font = "Maple Mono Light",
			bar_text_align = "center",
			bar_buttons_alignment = "right",
			bar_padding = 10,
			bar_button_padding = 8,
			inactive_button_color = palette.crust,
		},
		-- Dynamic Cursors
		dynamic_cursors = {
			enabled = true,
			mode = "rotate",
			threshold = 2,
			rotate = {
				length = 24,
				offset = 5.0
			},
			shake = {
				enabled = false,
				ipc = false
			},
			hyprcursor = {
				enabled = true,
				nearest = true,
				resolution = -2,
				fallback = "clientside"
			},
		},
	},
})

hl.plugin.hyprbars.add_button({bg_color = palette.mantle, fg_color = palette.text, size = 26, icon = "", action = "hyprctl dispatch killactive"})
hl.plugin.hyprbars.add_button({bg_color = palette.mantle, fg_color = palette.text, size = 26, icon = "", action = "hyprctl dispatch fullscreen 1"})
hl.plugin.hyprbars.add_button({bg_color = palette.mantle, fg_color = palette.text, size = 26, icon = "", action = "hyprland-minimizer"})
