local cc = require "andre.colorschemes.config-colorscheme"

cc.setcolorscheme("gruvbox")
cc.setbackground("dark")

local colorscheme = require("andre.colorschemes." .. cc.colorscheme)
colorscheme.background = cc.background

return colorscheme
