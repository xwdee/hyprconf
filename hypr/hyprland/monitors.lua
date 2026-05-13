--- Monitors Setup
hl.monitor(
	-- Main
	{
		output = "eDP-1",
		mode = "1920x1080@144",
		position = "0x0",
		scale = 1.00,
		bitdepth = 10
	},

	-- Extra
	{
		output = "HDMI-A-1",
		mode = "1600x900@60",
		position = "1920x60",
		scale = 1.00,
		bitdepth = 10,
	}
)
