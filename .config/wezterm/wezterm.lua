local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

-- config.color_scheme = 'Vs Code Dark+ (Gogh)'
-- config.color_scheme = 'Rosé Pine (Gogh)'
config.color_scheme = 'Gruvbox dark, hard (base16)'
-- config.color_scheme = 'Kanagawa (Gogh)'

-- config.font = wezterm.font 'JetBrains Mono'
-- config.font = wezterm.font 'Berkeley Mono'
-- config.font = wezterm.font 'BerkeleyMono Nerd Font'
-- config.font_size = 10.5
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 10

-- config.window_background_opacity = 0.8

config.window_decorations = "TITLE | RESIZE"

config.use_fancy_tab_bar = false

config.initial_rows = 64
config.initial_cols = 256

config.keys = {
	{
		key = 'S',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
	},
	{
		key = 'A',
		mods = 'CTRL|SHIFT',
		action = act.ActivatePaneDirection 'Left',
	},
	{
		key = 'D',
		mods = 'CTRL|SHIFT',
		action = act.ActivatePaneDirection 'Right',
	},
	{
		key = 'H',
		mods = 'CTRL|SHIFT',
		action = act.AdjustPaneSize { 'Left', 10 },
	},
	{
		key = 'L',
		mods = 'CTRL|SHIFT',
		action = act.AdjustPaneSize { 'Right', 10 },
	},
}

return config
