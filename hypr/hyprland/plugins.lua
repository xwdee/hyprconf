--- Plugins Configurations
hl.config({
	plugin = {
		-- Panel over Windows
		hyprbars = {
			enabled = true,
			bar_color = base,
			bar_height = 28,
			bar_blur = true,
			col.text = text,
			bar_title_enabled = true,
			bar_text_size = 16,
			bar_text_font = "Maple Mono Light",
			bar_text_align = "center",
			bar_buttons_alignment = "right",
			bar_padding = 10,
			bar_button_padding = 8,
			inactive_button_color = crust,
			add_button({bg_color = mantle, size = 26, icon = "", action = "hyprctl dispatch killactive"})
			add_button({bg_color = mantle, size = 26, icon = "", action = "hyprctl dispatch fullscreen 1"})
			add_button({bg_color = mantle, size = 26, icon = "", action = "hyprland-minimizer"})
		},
		-- Dynamic Cursors
		dynamic-cursors = {
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
			}
		}
	}
)
