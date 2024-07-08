local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.check_for_updates = false

-- default program
config.default_prog = {'ubuntu.exe'}

-- color
local scheme = 'Afterglow'
config.color_scheme = scheme

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

-- wallpaper
local imgsrc = 'C:/Users/hisya/Pictures/Wallpapers/1294333.png'
config.background = {
    {
    source = {File = imgsrc},
    hsb = {brightness = 0.025, saturation = 0.5}
    }
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
