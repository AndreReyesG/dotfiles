-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
package.path = package.path .. ";/home/andre/dotfiles/nvim/.config/nvim/lua/?.lua"
local colorscheme = require "andre.plugins.colorscheme"

--[[
-- This for testing
print(colorscheme.background)
print(colorscheme.name)
]]

local setcolorscheme = ""
if colorscheme.name == "kanagawa" then
  if colorscheme.background == "light" then
    setcolorscheme = "Gruvbox (Gogh)"
  else
    setcolorscheme = "Kanagawa (Gogh)"
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
