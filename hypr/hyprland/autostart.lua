--- Startup Programs
local apps = require("hyprland/programs")

hl.on("hyprland.start", function ()
	hl.exec_cmd("wl-paste --type text --watch clipman store")
	hl.exec_cmd("hyprlock")
	hl.exec_cmd("hyprpm reload")
	hl.exec_cmd("uwsm finalize")
	hl.exec_cmd("xrdb -merge ~/.Xresources")

	-- idk is `silent` rule has been support...
	-- hl.exec_cmd(apps.volumctrl, {workspace = 5, silent = true})
	-- hl.exec_cmd(apps.terminal .. " --session monitor", {workspace = "special:running", silent = true})
end)
