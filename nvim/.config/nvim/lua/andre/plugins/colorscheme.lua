local cc = require "andre.colorschemes.config-colorscheme"

cc.setcolorscheme("kanagawa")
cc.setbackground("light")

local colorscheme = require("andre.colorschemes." .. cc.colorscheme)
colorscheme.background = cc.background

return colorscheme
