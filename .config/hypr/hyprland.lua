-- This is an example Hyprland Lua config file.
-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/

-- Please note not all available settings / options are set here.
-- For a full list, see the wiki

-- You can (and should!!) split this configuration into multiple files
-- Create your files separately and then require them like this:
-- require("myColors")


------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "eDP-1",
    mode     = "preferred",
    position = "auto",
    scale    = 1,
})
hl.monitor({
    output   = "HDMI-A-1",
    mode     = "preferred",
    position = "auto",
    scale    = 1,
})




---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal    = "kitty"
local fileManager = "thunar"
local menu        = "hyprlauncher"
local browser     = "firefox"

-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function ()
  hl.exec_cmd("nm-applet")
  hl.exec_cmd("waybar & hyprpaper")
  hl.exec_cmd("hyprpm reload -n && hyprctl reload")
end)


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables
hl.env("XCURSOR_THEME", "catppuccin-mocha-dark-cursors")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "catppuccin-mocha-dark-cursors")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_CURRENT_DESKTOP","Hyprland")
hl.env("XDG_SESSION_DESKTOP","Hyprland")
hl.env("MOZ_ENABLE_WAYLAND","1")


-----------------------
----- PERMISSIONS -----
-----------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- hl.config({
--   ecosystem = {
--     enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")


-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 3,
        gaps_out = 5,

        border_size = 2,

        col = {
            active_border   = "rgba(ff0000ff)",
            inactive_border = "rgba(595959aa)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = true,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = true,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 4,
        rounding_power = 4,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 0.96,
        inactive_opacity = 0.85,

        shadow = {
            enabled      = true,
            range        = 20,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

-- Default springs
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 238.1191, dampening = 24.21279333 })

hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 4.1,  spring = "easy",         style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })

-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = 0,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = false, -- If true disables the random hyprland logo / anime girl background. :(
    },
})


---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "it",
        kb_variant = "",
        kb_model   = "",
        kb_options = "ctrl:nocaps",
        kb_rules   = "",

    numlock_by_default=true,
        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = true,
        },
        repeat_rate = 50,
        repeat_delay = 200,
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal), {description="Terminal"})
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(browser), {description="Firefox"})
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("emacsclient -c -a ''"), {description="Emacs"})
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close(), {description="Close window"})
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"), {description="Close hyp"})
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"), {description="Waybar"})
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("~/.local/bin/toggle-wallpapaer.sh"), {description="Toggle desktop"})
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager), {description="Thunar"})
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }), {description="Floating"})
hl.bind(mainMod .. " + CTRL + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }), { description = "Fullscreen" })
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu), {description="Rofi"})
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("hyprlock"), {description="Lock"})
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"), {description="Split"})    -- dwindle only
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd('hyprshot -m region -o /home/gabri/Pictures/'), {description="Screen cut"})
hl.bind(mainMod .. " + H", hl.dsp.exec_cmd("~/.local/bin/hypr-keybinds-rofi.sh"), {description="Help"})
hl.bind("SUPER + TAB", function() hl.plugin.hyprexpo.expo("toggle") end)

hl.bind(mainMod .. " + CTRL + RETURN", hl.dsp.exec_cmd(terminal .. " --class floating-term"), {description="Floating terminal"})
hl.bind(
    mainMod .. " + CTRL + E",
    hl.dsp.exec_cmd("GDK_BACKEND=x11 " .. fileManager .. " --class floating-thunar"),
    { description = "Floating thunar" }
)



-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ workspace = "e-1" })) --hide
hl.bind(mainMod .. " + right", hl.dsp.focus({ workspace = "e+1" })) --hide

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]

local kp = { 87, 88, 89, 83, 84, 85, 79, 80, 81, 90 }
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i})) --hide
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i })) --hide
    hl.bind(mainMod .. " + code:" .. kp[i],             hl.dsp.focus({ workspace = i})) --hide
    hl.bind(mainMod .. " + SHIFT + code:" .. kp[i],     hl.dsp.window.move({ workspace = i })) --hide
end

hl.bind(mainMod .. " + CTRL + left",  hl.dsp.focus({ direction = "left" }))  --hide
hl.bind(mainMod .. " + CTRL + right", hl.dsp.focus({ direction = "right" })) --hide
hl.bind(mainMod .. " + CTRL + up",    hl.dsp.focus({ direction = "up" }))    --hide
hl.bind(mainMod .. " + CTRL + down",  hl.dsp.focus({ direction = "down" }))  --hide


-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"), {description="Special frame"})
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" })) --hide

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" })) --hide
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" })) --hide

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true }) --hide
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true }) --hide

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true }) --hide
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true }) --hide
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true }) --hide
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true }) --hide
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true }) --hide
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true }) --hide

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true }) --hide
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true }) --hide
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true }) --hide
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true }) --hide





------------------
----- PLUGIN -----
------------------

if hl.plugin.hyprglass then

    local hg = hl.plugin.hyprglass

    hg.config({
        default_theme = "dark",
        default_preset = "clear",
        tint_color = 0x8899aa22,

        brightness = 0.9,
        dark = { brightness = 0.82 },
        light = { adaptive_boost = 0.5 },

        layers = { enabled = true },
    })

    -- Layer surfaces: each call whitelists the namespace and configures it
    hg.layer("waybar", { preset = "glass", mask_threshold = 0.05 })
    hg.layer("quickshell:bezel", { preset = "ui", mask_threshold = 0.3 })
    hg.layer("debug-panel", { exclude = true })

    -- Presets
    hg.preset("clear", {
        glass_opacity = 0.8,
        blur_strength = 1.5,
        dark = { brightness = 0.7 },
        light = { brightness = 1.2 },
    })

    hg.preset("contrasted", {
        inherits = "high_contrast",
        refraction_strenght = 1.0,
        refraction_spread = 1.0,
        chromatic_aberration = 1.0,
    })

    hg.layer("notifications", { preset = "glass", mask_threshold = 0.05 })
    hg.layer("hyprlauncher",  { preset = "pomme", mask_threshold = 0.05 })
end

hl.window_rule({ match = { class = "mpv" },       tag = "+hyprglass_disabled" })
hl.window_rule({ match = { class = "Emacs"},    tag = "+hyprglass_disabled" })
hl.window_rule({ match = { class = "firefox" },    tag = "+hyprglass_disabled" })
hl.window_rule({ match = { class = "kitty" }, tag = "+hyprglass_preset_contrasted" })
hl.window_rule({ match = { class = "thunar" }, tag = "+hyprglass_preset_contrasted" })

hl.config({
    plugin = {
        hyprexpo = {
            columns = 3,
            gaps_in = 5,
            gaps_out = 0,
            bg_col = "rgb(111111)",
            workspace_method = "center current",
            gesture_distance = 200,
            cancel_key = "escape",
            show_cursor = 1,
            keynav_enable = 1,
            label_enable = 1,
            border_width = 2,
        },
    },
})
hl.define_submap("hyprexpo", function()
    hl.bind("left",   function() hl.plugin.hyprexpo.kb_focus("left") end)
    hl.bind("right",  function() hl.plugin.hyprexpo.kb_focus("right") end)
    hl.bind("up",     function() hl.plugin.hyprexpo.kb_focus("up") end)
    hl.bind("down",   function() hl.plugin.hyprexpo.kb_focus("down") end)
    hl.bind("return", function() hl.plugin.hyprexpo.kb_confirm() end)
    hl.bind("escape", function() hl.plugin.hyprexpo.expo("cancel") end)
                             end)

if hl.plugin.hyprfocus then
hl.config({
    plugin = {
        hyprfocus = {
            enable = true,
            keyboard_focus_animation = "flash",
            mouse_focus_animation = "shrink",
            fade_opacity = 0.8,
            shrink_percentage = 0.99,
        },
    },
})
end

hl.config({
    plugin = {
        borders_plus_plus = {
            add_borders = 1,
            natural_rounding = true,

            col = {
                border_1 = "rgb(ff00c1)",
            },

            border_size_1 = 1,
        }
    }
})
--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful



hl.window_rule({
  name  = "firefox-opaco",
  match = { class = "firefox" },
  opacity = "0.99 override 0.99 override",
})
hl.window_rule({
  name  = "brave-opaco",
  match = { class = "brave-browser" },
  opacity = "0.99 override 0.99 override",
})
hl.window_rule({
  name  = "Emacs-opaco",
  match = { class = "Emacs" },
  opacity = "0.98 override 0.98 override",
})

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)
hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "sdl",
    match = {
          class = "sdl",
          title = "sdl",
          },
          float = true,
})
hl.window_rule({
    name = "ueberzugpp",
    match = {
          class = "ueberzugpp_.*",
          title = "ueberzugpp_.*",
          },
          float = true,
})
hl.window_rule({
    name = "pygame",
    match = {
          title = "pygame window",
          },
          float = true,
})
hl.window_rule({
    name = "pygame2",
    match = {
          title = "gatti",
          },
          float = true,
})

hl.window_rule({
    name = "OpenGL",
    match = {
          title = "OpenGL",
          },
    float = true,
    center = true,
})

hl.window_rule({
    name = "Crak",
    match = {
          title = "Crak",
          },
    float = true,
    center = true,
})

hl.window_rule({
    name  = "floating-term",
    match = { class = "^floating-term$" },
    float  = true,
    center = true,
    size   = "600 600",
    tag = "+hyprglass_preset_contrasted",
})

hl.window_rule({
    name  = "floating-thunar",
    match = { class = "^floating-thunar$" },
    float  = true,
    center = true,
    size   = "900 900",
    tag = "+hyprglass_preset_contrasted",
})
