local g = vim.g
local cmd = vim.cmd
local set = vim.opt

-- Set leader key
g.mapleader = " "
set.syntax = "on"
set.number = true
set.relativenumber = true
set.cursorline = true
set.autoindent = true
set.tabstop = 4
set.shiftwidth = 4
set.smarttab = true
set.softtabstop = 4
set.expandtab = true
set.smartindent = true
set.mouse = "a"
-- specify colorscheme
cmd "colorscheme jellybeans"
