local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.check_for_updates = false

-- default program
config.default_prog = {"cmd.exe"}

-- color
local scheme = 'Afterglow'
config.color_scheme = scheme

-- generate all wallpapers
--local wallpapers = {
    --"C:/Users/hisya/OneDrive/Pictures/Background/albedo.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/anime.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/anya.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/frieren.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/hitori.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/kurumi.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/miku.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/rem.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/roxy.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/violet.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/anya2.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/anya3.png",
    --"C:/Users/hisya/OneDrive/Pictures/Background/askeladd.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/bocchidino.png",
    --"C:/Users/hisya/OneDrive/Pictures/Background/bocchiposter.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/chika.png",
    --"C:/Users/hisya/OneDrive/Pictures/Background/chika2.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/emilia.png",
    --"C:/Users/hisya/OneDrive/Pictures/Background/emilia2.png",
    --"C:/Users/hisya/OneDrive/Pictures/Background/eris.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/frieren2.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/frieren3.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/frieren4.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/frieren5.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/griffith.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/guts.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/hayasaka.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/heroparty.png",
    --"C:/Users/hisya/OneDrive/Pictures/Background/kaguya.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/kessoku.png",
    --"C:/Users/hisya/OneDrive/Pictures/Background/kessoku2.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/kessoku3.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/kikuri.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/kita.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/kurumi.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/maomao.png",
    --"C:/Users/hisya/OneDrive/Pictures/Background/nanahoshi.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/nijika.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/rem2.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/rem3.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/roxy2.png",
    --"C:/Users/hisya/OneDrive/Pictures/Background/rudeus.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/ryo.png",
    --"C:/Users/hisya/OneDrive/Pictures/Background/scenery.png",
    --"C:/Users/hisya/OneDrive/Pictures/Background/shuciin.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/spyfam.jpeg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/thorfinn.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/thorfinn2.png",
    --"C:/Users/hisya/OneDrive/Pictures/Background/thors.jpg",
    --"C:/Users/hisya/OneDrive/Pictures/Background/tree.png",
--}
--local wall_path = wallpapers[math.random(1, #wallpapers)]

-- displays
config.background = {
    {
        source = {
            --File = wall_path,
            File = "C:/Users/hisya/OneDrive/Pictures/Background/hitori.jpg"
        },
        hsb = {
            brightness = 0.025,
            saturation = 0.75
        },
    }
}

-- window
config.enable_scroll_bar = false
config.enable_tab_bar = false
config.window_decorations = 'RESIZE|TITLE'
config.window_padding = {
    left = 2,
    right = 0,
    top = 2,
    bottom = 0,
}

-- fonts
config.font = wezterm.font 'CaskaydiaCove Nerd Font'
config.font_size = 14.0

-- key mappings
config.keys = {
    -- split pane vertically
    {
        key = '"',
        mods = 'CTRL|SHIFT|ALT',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    -- split pane horizontally
    {
        key = '%',
        mods = 'CTRL|SHIFT|ALT',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    -- close current pane
    {
        key = 'w',
        mods = 'CTRL|ALT',
        action = wezterm.action.CloseCurrentPane { confirm = true },
    },
    -- change pane (by alphabet)
    { 
        key = '8', 
        mods = 'CTRL', 
        action = wezterm.action.PaneSelect 
    },
    -- reload configuration
    {
        key = 'R',
        mods = 'CTRL|SHIFT|ALT',
        action = wezterm.action.ReloadConfiguration,
    },
}

return config
