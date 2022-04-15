local wezterm = require 'wezterm';

return {
    color_scheme = "Dracula",
    keys = { -- This will create a new split and run your default program inside it
    {
        key = "d",
        mods = "CMD",
        action = wezterm.action {
            SplitHorizontal = {
                domain = "CurrentPaneDomain"
            }
        }
    }, {
        key = "d",
        mods = "CMD|SHIFT",
        action = wezterm.action {
            SplitVertical = {
                domain = "CurrentPaneDomain"
            }
        }
    }, {
        key = "w",
        mods = "CMD",
        action = wezterm.action {
            CloseCurrentPane = {
                confirm = true
            }
        }
    }, {
        key = "]",
        mods = "CMD",
        action = wezterm.action {
            ActivatePaneDirection = "Next"
        }
    }, {
        key = "[",
        mods = "CMD",
        action = wezterm.action {
            ActivatePaneDirection = "Prev"
        }
    }}
}
