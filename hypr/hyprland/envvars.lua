--- Environment Variables

-- TroubleShoots
hl.env("ELECTRON_OZONE_PLATFORM_HINT","wayland")
hl.env("MOZ_ENABLE_WAYLAND","1")
hl.env("WLR_NO_HARDWARE_CURSORS","1")

-- Theming Related Variables
hl.env("GTK_THEME","Catppuccin-Mocha-Blue")
hl.env("HYPRCURSOR_SIZE","24")
hl.env("HYPRCURSOR_THEME","Bibata-Modern-Ice")
hl.env("XCURSOR_SIZE","24")
hl.env("XCURSOR_THEME","Bibata-Modern-Ice")

-- Toolkit Backend Variables
hl.env("CLUTTER_BACKEND","wayland")
hl.env("GDK_BACKEND","wayland,x11,*")
hl.env("SDL_VIDEODRIVER","wayland,x11")

-- Qt Variables
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR","1")
hl.env("QT_QPA_PLATFORMTHEME","qt6ct")
hl.env("QT_QPA_PLATFORM","wayland;xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION","0")

-- NVIDIA Specific
hl.env("GBM_BACKEND","nvidia-drm")
hl.env("LIBVA_DRIVER_NAME","nvidia")
hl.env("NVD_BACKEND","direct")
hl.env("VDPAU_DRIVER","nvidia")
hl.env("__GL_GSYNC_ALLOWED","0")
hl.env("__GL_SYNC_TO_VBLANK","0")
hl.env("__GL_VRR_ALLOWED","0")
hl.env("__GLX_VENDOR_LIBRARY_NAME","nvidia")
hl.env("__NV_PRIME_RENDER_OFFLOAD","0")
hl.env("__VK_LAYER_NV_optimus","NVIDIA_only")
