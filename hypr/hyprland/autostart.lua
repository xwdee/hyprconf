--- Startup Programs
hl.on("hyprland.start", function ()
	hl.exec_cmd("wl-paste --type text --watch clipman store")
	hl.exec_cmd("hyprlock")
	hl.exec_cmd("hyprpm reload")
	hl.exec_cmd("uwsm finalize")
	hl.exec_cmd("xrdb -merge ~/.Xresources")

	-- Is Supported?
	-- hl.exec_cmd("[workspace 5 silent] $volumctrl")
	-- hl.exec_cmd("[workspace special:running silent] $terminal --session monitor")
end)
