---- Minimal Configuration for Hyprland

--- Main Monitor
require("hyprland/monitors")

--- Import Colors Vars
require("hyprland/colors")

--- Plugins Configurations
require("hyprland/plugins")
hl.on("hyprland.start", function ()
	hl.exec_cmd("hyprpm reload --notify")
end)

--- Environment Variables
require("hyprland/envvars")

--- Programs
require("hyprland/programs")

--- Keybinds
require("hyprland/keybinds")

--- Animation, Winrules, and Workspaces
require("hyprland/animations")
require("hyprland/winrules")
require("hyprland/workspaces")

--- Basic animations and Cosmetics
-- ....
