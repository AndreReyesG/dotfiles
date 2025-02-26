-- ~/.config/nvim/lua/ana/core/options.lua
local opt = vim.opt

-- números
opt.relativenumber = true
opt.number = true

-- tabs & indentación
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

-- habilitar mouse
opt.mouse = "a"

-- habilitar portapapeles
opt.clipboard = "unnamedplus"

-- colorscheme
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- split windows
opt.splitright = true -- separa una ventana de forma vertical a la derecha
opt.splitbelow = true -- separa una ventana de forma horizaontal hacia abajo

opt.swapfile = false

-- Set highlight on search
opt.hlsearch = true

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 300

-- Set completeopt to have a better completion experience
opt.completeopt = "menuone,noselect"

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.cursorline = true
