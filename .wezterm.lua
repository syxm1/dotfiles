local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- General settings
config.check_for_updates = false
config.default_prog = {'ubuntu.exe'}
config.color_scheme = 'rose-pine'
config.font = wezterm.font 'CaskaydiaCove Nerd Font'
config.font_size = 14.0

-- Window settings
config.enable_scroll_bar = false
config.enable_tab_bar = false
config.window_decorations = 'RESIZE|TITLE'
config.window_padding = {
    left = 2,
    right = 0,
    top = 2,
    bottom = 0,
}

-- Background settings
config.background = {
    {
        source = {File = 'C:/Users/hisya/Pictures/Wallpapers/1294333.png'},
        hsb = {brightness = 0.025, saturation = 0.5}
    }
}

-- Key mappings
config.keys = {
    -- Split pane vertically
    {
        key = '"',
        mods = 'CTRL|SHIFT|ALT',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    -- Split pane horizontally
    {
        key = '%',
        mods = 'CTRL|SHIFT|ALT',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    -- Close current pane
    {
        key = 'w',
        mods = 'CTRL|ALT',
        action = wezterm.action.CloseCurrentPane { confirm = true },
    },
    -- Change pane (by alphabet)
    {
        key = '8',
        mods = 'CTRL',
        action = wezterm.action.PaneSelect,
    },
    -- Reload configuration
    {
        key = 'R',
        mods = 'CTRL|SHIFT|ALT',
        action = wezterm.action.ReloadConfiguration,
    },
}

return config
