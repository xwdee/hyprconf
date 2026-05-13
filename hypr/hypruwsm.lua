--- Main configuration for UWSM Mode
--- source: https://github.com/xwdee/hyprconf

-- Colors Pallete
require("hyprland/colors")

-- Monitors 
require("hyprland/monitors")

-- Default Programs
require("hyprland/programs")

-- Startup Programs
require("hyprland/autostart")

-- Plugins Configuration
require("hyprland/plugins")

-- Keybinds
require("hyprland/keybinds")

-- Window Rules
require("hyprland/winrules")

-- Workspaces
require("hyprland/workspaces")

-- Animations
require("hyprland/animations")

-- Extra
-- (did not come up with a desc)
hl.config({
	general = {
		gaps_in = 6,
		gaps_out = 4,
		border_size = 2,
		col = {
			active_border = {color = {palette.blue, palette.base, palette.base, palette.blue}, angle = 45}},
			inactive_border = {color = {palette.blue, palette.base, palette.base, palette.blue}, angle = 45}},
		},
		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},
	decoration = {
		rounding = 10,
		rounding_power = 2,
		active_opacity = 1,
		inactive_opacity = 1,
		shadow = {
			enabled = true,
			range = 6,
			render_power = 4,
			color = palette.crust,
		},
		blur = {
			enabled = true,
			size = 12,
			passes = 2,
		},
	},
	dwindle = {
		preserve_split = true,
	},
	master = {
		new_status = "master",
	},
	misc = {
		force_default_wallpaper = false,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		vrr = 0,
	},
	-- Keyboard
	input = {
		kb_layout = "us,ua,ru",
		kb_variant = "altgr-intl,winkeys,winkeys",
		kb_model = "pc104",
		kb_options = "grp:alt_shift_toggle",
		kb_rules = "evdev",
		follow_mouse = 1,
		sensitivity = 0,
		touchpad = {
			natural_scroll = false,
		},
	},
})

-- Mouse
hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.6,
})
