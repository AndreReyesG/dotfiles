-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
local flavor = {
  "Kanagawa (Gogh)",
  "kanagawabones",
  "Tokyo Night Moon",
  "Catppuccin Latte",
  "Dracula (Official)"
}

config.color_scheme = flavor[1]

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 18
config.enable_tab_bar = false

-- and finally, return the configuration to wezterm
return config
