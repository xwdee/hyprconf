--- Default Programs
local apps = {
	terminal = "uwsm app -- kitty",
	terminalAlt = "uwsm app -- uxterm",
	browser = "uwsm app -- zen-browser",
	browserAlt = "uwsm app -- google-chrome-stable",
	fileManager = "uwsm app -- thunar",
	telegram = "uwsm app -- materialgram",
	discord = "uwsm app -- discord.sh --disable-gpu",
	menu = "rofi -run-command 'uwsm app -- {cmd}' -show",
	emojiPick = "uwsm app -- it.mijorus.smile",
	editor = "uwsm app -- code-oss --disable-gpu",
	steam = "uwsm app -- steam-native",
	music = "uwsm app -- env LD_PRELOAD=spotify-adblock.so spotify",
	volumctrl = "uwsm app -- pavucontrol-qt",
	volumport = "uwsm app -- audiorelay",
	chatgpt = "xdg-open https://chatgpt.com",
	github = "xdg-open https://github.com",
	youtube = "xdg-open https://youtube.com",
}

return apps
