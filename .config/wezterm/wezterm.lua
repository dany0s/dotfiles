-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.hyperlink_rules = wezterm.default_hyperlink_rules()

table.insert(config.hyperlink_rules, {
	regex = [[\b[tt](\d+)\b]],
	format = "https://example.com/tasks/?t=$1",
})

config.color_scheme = "Poimandres"

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 14

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 1.0
config.macos_window_background_blur = 20

config.colors = {
	-- Make the selection text color fully transparent.
	-- When fully transparent, the current text color will be used.
	selection_fg = "none",
	-- Set the selection background color with alpha.
	-- When selection_bg is transparent, it will be alpha blended over
	-- the current cell background color, rather than replace it
	selection_bg = "rgba(50% 50% 50% 50%)",
}

-- Add keybindings
config.keys = {
	{
		key = "k",
		mods = "CMD",
		action = wezterm.action.SendString("clear\r"),
	},
}

-- and finally, return the configuration to wezterm
return config
