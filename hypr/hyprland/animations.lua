-- ----------------------------------------------------- 
-- ▄▀█ █▄░█ █ █▀▄▀█ ▄▀█ ▀█▀ █ █▀█ █▄░█
-- █▀█ █░▀█ █ █░▀░█ █▀█ ░█░ █ █▄█ █░▀█
--
-- credit https://github.com/end-4/dots-hyprland
-- credit https://github.com/gaurav23b/simple-hyprland
-- ----------------------------------------------------- 
hl.curve("emphasizedAccel", {type = "bezier", points = {{0.2, 0}, {0.8, 0.14}}})
hl.curve("emphasizedDecel", {type = "bezier", points = {{0.06, 0.8}, {0.1, 1}}})
hl.curve("expressiveDefaultSpatial", {type = "bezier", points = {{0.38, 1.20}, {0.22, 1.00}}})
hl.curve("expressiveFastSpatial", {type = "bezier", points = {{0.42, 1.70}, {0.20, 0.90}}})
hl.curve("expressiveSlowSpatial", {type = "bezier", points = {{0.40, 1.30}, {0.35, 0.98}}})
hl.curve("menu_accel", {type = "bezier", points = {{0.42, 0.02}, {0.72, 0.08}}})
hl.curve("menu_decel", {type = "bezier", points = {{0.1, 1}, {0, 1}}})
hl.curve("stall", {type = "bezier", points = {{1, -0.1}, {0.8, 0.84}}})
hl.curve("standardDecel", {type = "bezier", points = {{0, 0}, {0, 1}}})
hl.curve("linear", {type = "bezier", points = {{1, 1}, {1, 1}}})
hl.animation({leaf = "border", enabled = true, speed = 10, bezier = "linear"})
hl.animation({leaf = "borderangle", enabled = true, speed = 30, bezier = "linear", style = "loop"})
hl.animation({leaf = "fade", enabled = true, speed = 10, bezier = "emphasizedDecel"})
hl.animation({leaf = "fadeIn", enabled = true, speed = 4, bezier = "emphasizedDecel"})
hl.animation({leaf = "fadeLayersIn", enabled = true, speed = 0.5, bezier = "menu_decel"})
hl.animation({leaf = "fadeLayersOut", enabled = true, speed = 2.6, bezier = "stall"})
hl.animation({leaf = "fadeOut", enabled = true, speed = 2, bezier = "emphasizedDecel"})
hl.animation({leaf = "layersIn", enabled = true, speed = 2.6, bezier = "emphasizedDecel", style = "popin 94%"})
hl.animation({leaf = "layersOut", enabled = true, speed = 2.4, bezier = "menu_accel", style = "popin 94%"})
hl.animation({leaf = "specialWorkspaceIn", enabled = true, speed = 2.8, bezier = "emphasizedDecel", style = "slidevert"})
hl.animation({leaf = "specialWorkspaceOut", enabled = true, speed = 1.2, bezier = "emphasizedAccel", style = "slidevert"})
hl.animation({leaf = "windows", enabled = true, speed = 6, bezier = "emphasizedDecel", style = "slide"})
hl.animation({leaf = "windowsIn", enabled = true, speed = 2, bezier = "emphasizedDecel", style = "popin 80%"})
hl.animation({leaf = "windowsMove", enabled = true, speed = 2, bezier = "emphasizedDecel", style = "slide"})
hl.animation({leaf = "windowsOut", enabled = true, speed = 2, bezier = "emphasizedDecel", style = "popin 90%"})
hl.animation({leaf = "workspaces", enabled = true, speed = 6, bezier = "menu_decel", style = "slide"})
hl.animation({leaf = "zoomFactor", enabled = true, speed = 2, bezier = "emphasizedDecel"})
