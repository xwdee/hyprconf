--- Keybindings
-- Variables
local mainMod = "SUPER"
local script = "~/.config/hypr/scripts"

-- Fullscreen
hl.bind(mainMod .. " + ALT + F", hl.dsp.window.fullscreen({mode = 1}))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({mode = 0}))

-- Screenshots (Fn+Print Screen)
hl.bind(" + code:107", hl.dsp.exec_cmd("hyprshot -o ~/Pictures/Screenshots -m region"), {locked = true})
hl.bind("SHIFT + code:107", hl.dsp.exec_cmd("hyprshot -o ~/Pictures/Screenshots -m output -z"), {locked = true})

-- Programs
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd(music))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + ALT + B", hl.dsp.exec_cmd(browserAlt))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(emojiPick))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd(editor))
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd(github))
hl.bind(mainMod .. " + H", hl.dsp.exec_cmd("hyprpicker -a"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(terminal .. " nmtui", {float = true}))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd(script .. "/scrcpy.sh"))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + ALT + Q", hl.dsp.exec_cmd(terminalAlt))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd(terminal, {float = true}))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("uuctl"))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(telegram))
hl.bind(mainMod .. " + ALT + T", hl.dsp.exec_cmd(chatgpt))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("clipman pick -t rofi"))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd(youtube))
hl.bind(mainMod .. " + ALT + SPACE", hl.dsp.exec_cmd(script .. "/gamemode.sh"))

-- Settings
hl.bind(mainMod .. " + C", hl.dsp.window.kill())
hl.bind(mainMod .. " + F", hl.dsp.window.float({action = "toggle"}))
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(script .. "/lockscreen.sh"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("playerctl next"))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu .. " drun"))
hl.bind(mainMod .. " + Tab", hl.dsp.exec_cmd("swaync-client -t -sw"))
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.window.pin())
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.window.center())
hl.bind(mainMod .. " + F4", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), {locked = true})
hl.bind(mainMod .. " + F3", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), {repeating = true, locked = true})
hl.bind(mainMod .. " + F2", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), {repeating = true, locked = true})

-- Cycle windows
hl.bind("ALT + Tab", hl.dsp.layout("cyclenext"))

-- Toggle Workspaces
hl.bind(mainMod .. " + 1", hl.dsp.focus({workspace = 1}))
hl.bind(mainMod .. " + 2", hl.dsp.focus({workspace = 2}))
hl.bind(mainMod .. " + 3", hl.dsp.focus({workspace = 3}))
hl.bind(mainMod .. " + 4", hl.dsp.focus({workspace = 4}))
hl.bind(mainMod .. " + 5", hl.dsp.focus({workspace = 5}))
hl.bind(mainMod .. " + 6", hl.dsp.focus({workspace = 6}))
hl.bind(mainMod .. " + 7", hl.dsp.focus({workspace = 7}))
hl.bind(mainMod .. " + 8", hl.dsp.focus({workspace = 8}))
hl.bind(mainMod .. " + 9", hl.dsp.focus({workspace = 9}))
hl.bind(mainMod .. " + 0", hl.dsp.focus({workspace = 10}))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({workspace = 1}))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({workspace = 2}))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({workspace = 3}))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({workspace = 4}))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({workspace = 5}))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({workspace = 6}))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({workspace = 7}))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({workspace = 8}))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({workspace = 9}))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({workspace = 10}))

-- Special workspaces (scratchpad)
hl.bind(mainMod .. " + code:49", hl.dsp.workspace.toggle_special("overview"))
hl.bind(mainMod .. " + SHIFT + code:49", hl.dsp.window.move({workspace = "special:overview"}))
hl.bind(mainMod .. " + code:67", hl.dsp.workspace.toggle_special("running"))
hl.bind(mainMod .. " + SHIFT + code:67", hl.dsp.window.move({workspace = "special:running"}))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({workspace = "e-1"}))
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({workspace = "e+1"}))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), {mouse = true})
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), {mouse = true})

-- Move and resize windows
hl.bind(mainMod .. " + up", hl.resize({x = 0, y = -20}), {repeating = true})
hl.bind(mainMod .. " + down", hl.resize({x = 0, y = 40}), {repeating = true})
hl.bind(mainMod .. " + left", hl.resize({x = -20, y = 0}), {repeating = true})
hl.bind(mainMod .. " + right", hl.resize({x = 40, y = 0}), {repeating = true})
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({direction = "up"}))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({direction = "down"})) 
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({direction = "left"}))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({direction = "right"}))
