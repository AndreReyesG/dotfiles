-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
package.path = package.path .. ";/home/andre/dotfiles/nvim/.config/nvim/lua/?.lua"
local colorscheme = require "andre.plugins.colorscheme"

local setcolorscheme = ""
if colorscheme.name == "kanagawa" or colorscheme.name == "gruvbox" then
  if colorscheme.background == "light" then
    setcolorscheme = "Gruvbox (Gogh)"
  elseif colorscheme.name == "kanagawa" then
    setcolorscheme = "Kanagawa (Gogh)"
  elseif colorscheme.name == "gruvbox" then
    setcolorscheme = "Gruvbox Dark (Gogh)"
  end
elseif colorscheme.name == "catppuccin" then
  if colorscheme.background == "light" then
    setcolorscheme = "Catppuccin Latte"
  else
    setcolorscheme = "Tokyo Night Moon"
  end
else
  setcolorscheme = "Dracula (Official)"
end

config.color_scheme = setcolorscheme

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 18
config.enable_tab_bar = false

-- and finally, return the configuration to wezterm
return config
